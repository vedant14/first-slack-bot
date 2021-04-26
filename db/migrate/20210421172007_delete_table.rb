class DeleteTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :username_meetings
  end
end
