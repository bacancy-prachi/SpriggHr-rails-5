class RemoveOrganizationIdFromDailyTaskReminders < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_task_reminders, :id
  end
end
