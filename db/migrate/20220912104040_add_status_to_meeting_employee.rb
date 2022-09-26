class AddStatusToMeetingEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :meeting_employees, :status, :string, default: "NEEDS-ACTION"
  end
end
