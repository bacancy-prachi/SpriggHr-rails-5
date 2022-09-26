class AddMessageToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :message, :text
  	add_column :meetings, :reminder, :boolean
  end
end
