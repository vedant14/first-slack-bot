class UserName < ApplicationRecord

	has_many :user_meetings, dependent: :destroy

end
