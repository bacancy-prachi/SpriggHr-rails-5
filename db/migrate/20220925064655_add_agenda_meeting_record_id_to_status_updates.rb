class AddAgendaMeetingRecordIdToStatusUpdates < ActiveRecord::Migration[5.2]
  def change
    add_column :status_updates, :agenda_meeting_record_id, :integer
  end
end
