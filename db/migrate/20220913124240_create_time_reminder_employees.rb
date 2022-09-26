class CreateTimeReminderEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :time_reminder_employees do |t|
      t.integer :time_reminder_id
      t.integer :employee_id
    end
  end
end
