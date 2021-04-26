class UserMeeting < ApplicationRecord
	belongs_to :user_name
	belongs_to :meeting
end
