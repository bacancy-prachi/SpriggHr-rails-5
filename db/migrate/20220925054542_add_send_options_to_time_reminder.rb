class AddSendOptionsToTimeReminder < ActiveRecord::Migration[5.2]
  def change
    add_column :time_reminders, :send_email, :boolean, default: true
    add_column :time_reminders, :send_slack, :boolean, default: false
    add_column :time_reminders, :send_mytask, :boolean, default: false
  end
end
