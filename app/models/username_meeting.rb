class UsernameMeeting < ApplicationRecord
  belongs_to :username
  belongs_to :meeting

  validates :username, presence: true
  validates :meeting, presence: true
end
