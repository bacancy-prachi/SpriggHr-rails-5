class CreateCheckinMeetingApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_approvals do |t|
      t.references :checkin_meeting
      t.references :employee
      t.text :comment
      t.string :approval_type

      t.timestamps
    end
    add_index :checkin_meeting_approvals, :checkin_meeting_id
    add_index :checkin_meeting_approvals, :employee_id
  end
end
