class ActionItem < ApplicationRecord
	belongs_to :assignee, class_name: "User"
	belongs_to :meeting

	validates :item, presence: true
	validates :assignee, presence: true
	validates :meeting, presence: true
end
