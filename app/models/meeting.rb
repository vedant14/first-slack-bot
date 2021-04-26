class Meeting < ApplicationRecord
	belongs_to :scribe, class_name: "User"
	has_many :meeting_participants, dependent: :destroy
	has_many :user_meetings, dependent: :destroy
	has_many :discussions, dependent: :destroy
	has_many :action_items, dependent: :destroy

	accepts_nested_attributes_for :meeting_participants, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :discussions, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :action_items, reject_if: :all_blank, allow_destroy: true
	validates_associated :discussions
	validates_associated :action_items


	before_save :concatStrings


	def agendaText text
		usersArray = []
		usernameArray = text.scan(/@([\w(-|.)]+)/).flatten
		usernameArray.each do |uN|
		  if UserName.where(name: uN).exists? 
			userid = UserName.find_by(name: uN)
		    self.user_meetings.create(user_name_id: userid.id)
		  else
		    UserName.create(name: uN)
		    self.user_meetings.create(user_name_id: UserName.last.id)
		  end
		end
	end

	def concatStrings
		if self.user_meetings.exists?
			temp_array = []
			self.user_meetings.each do |user_meeting| 
				temp_array << user_meeting.user_name.name
			end
			self.attendee_content = temp_array.join(" \n ")
		end
		if self.discussions.exists?
			temp_array = []
			self.discussions.each do |discussion|
				temp_array << discussion.content
			end
			self.discussion_content = temp_array.join(" \n• ")
		end
	end


end
