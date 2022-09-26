class AddStatusMessageToMeetingEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :meeting_employees, :status_message, :string
    add_column :meeting_employees, :arrival_time_hours, :string
    add_column :meeting_employees, :arrival_time_mins, :string
  end
end
