class CreateCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meetings do |t|
      t.integer :cycle_id
      t.date :completed_at
      t.boolean :completed

      t.timestamps
    end
    add_index :checkin_meetings, :cycle_id
  end
end
