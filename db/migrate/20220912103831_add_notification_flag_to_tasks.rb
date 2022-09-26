class AddNotificationFlagToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :send_notification, :boolean
  end
end
