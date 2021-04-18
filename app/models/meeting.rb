class Meeting < ApplicationRecord
	has_many :meeting_participants, dependent: :destroy
	belongs_to :scribe, class_name: "User"
	has_many :discussions, dependent: :destroy
	has_many :action_items, dependent: :destroy

	accepts_nested_attributes_for :meeting_participants, reject_if: :all_blank, allow_destroy: true

	accepts_nested_attributes_for :discussions, reject_if: :all_blank, allow_destroy: true
	validates_associated :discussions
end
