class Discussion < ApplicationRecord
	belongs_to :user
	belongs_to :meeting

	validates :content, presence: true
	validates :meeting, presence: true
	validates :user, presence: true
end
