class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	
	has_many :meeting_participants, dependent: :destroy
	

	has_many :meetings, foreign_key: "scribe_id"
	has_many :discussions
	has_many :action_items, foreign_key: "assignee_id"
end
