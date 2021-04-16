class AddUsersToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_reference :meetings, :scribe, index: true, foreign_key: { to_table: :users }, null: false
  end
end
