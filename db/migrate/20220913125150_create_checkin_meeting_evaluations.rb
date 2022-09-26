class CreateCheckinMeetingEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_evaluations do |t|
      t.integer :checkin_meeting_id
      t.integer :employee_id
      t.string :evaluation_type
      t.date :completed_at
      t.boolean :completed

      t.timestamps
    end
    add_index :checkin_meeting_evaluations, :checkin_meeting_id
    add_index :checkin_meeting_evaluations, :employee_id
  end
end
