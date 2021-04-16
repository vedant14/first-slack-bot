class Meeting < ApplicationRecord
	has_many :meeting_participants
	belongs_to :scribe, class_name: "User"

end
