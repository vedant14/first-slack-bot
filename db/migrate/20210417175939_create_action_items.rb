class CreateActionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :action_items do |t|
      t.string :item
      t.references :assignee, foreign_key: { to_table: :users }
	  t.references :meeting, foreign_key: true
      t.timestamps
    end
  end
end
