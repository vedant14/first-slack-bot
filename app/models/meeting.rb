class Meeting < ApplicationRecord
	has_many :meeting_participants, dependent: :destroy
	belongs_to :scribe, class_name: "User"

	accepts_nested_attributes_for :meeting_participants, reject_if: :all_blank, allow_destroy: true

	# validates_associated :meeting_participants
end
