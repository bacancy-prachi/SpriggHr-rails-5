class CreateAgendaMeetingRecordResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_meeting_record_responses do |t|
      t.references :agenda_meeting_record
      t.references :employee
      t.string :status
      t.text :response
      t.timestamps
    end
    add_index :agenda_meeting_record_responses, :agenda_meeting_record_id, name: 'idx_agd_meeting_record_responses_agd_meeting_record'
    add_index :agenda_meeting_record_responses, :employee_id
  end
end
