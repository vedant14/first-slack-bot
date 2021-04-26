class AddSingleLine < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :discussion_content, :text
    add_column :meetings, :attendee_content, :text
  end
end
