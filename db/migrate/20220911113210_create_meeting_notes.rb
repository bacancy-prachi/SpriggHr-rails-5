class CreateMeetingNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_notes do |t|
      t.references :meeting
      t.references :employee
      t.text :body
      t.boolean :private

      t.timestamps
    end
    add_index :meeting_notes, :meeting_id
    add_index :meeting_notes, :employee_id
  end
end
