class CreateUsernameMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :username_meetings do |t|
      t.references :user_name, foreign_key: true
      t.references :meeting, foreign_key: true
      t.timestamps
    end
  end
end
