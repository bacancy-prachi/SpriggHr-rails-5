class AddMeetingRecordsAccessToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :meeting_record_access, :boolean, null: false, default: false
  end
end
