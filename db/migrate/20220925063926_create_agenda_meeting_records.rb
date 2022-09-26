class CreateAgendaMeetingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_meeting_records do |t|
      t.references :agenda
      t.has_attached_file :meeting_minutes
      t.timestamps
    end
    add_index :agenda_meeting_records, :agenda_id
  end
end
