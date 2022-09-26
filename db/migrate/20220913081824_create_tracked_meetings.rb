class CreateTrackedMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :tracked_meetings do |t|
      t.integer :employee_id, null: false
      t.boolean :meeting_booked, default: false
      t.boolean :meeting_completed, default: false
      t.string :meeting_description, default: ""
      t.string :meeting_type, default: ""
      t.text :comments
      t.timestamps
    end
  end
end
