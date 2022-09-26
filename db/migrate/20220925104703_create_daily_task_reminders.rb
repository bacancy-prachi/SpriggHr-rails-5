class CreateDailyTaskReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_task_reminders do |t|
      t.integer :organization_id
      t.text :body
      t.timestamps
    end
  end
end
