class CreateMeetingParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_participants do |t|
      t.references :user, foreign_key: true, null: false
      t.references :meeting, foreign_key: true, null: false

      t.timestamps
    end
  end
end
