class CreateMeetingEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_employees do |t|
      t.references :employee
      t.references :meeting
      t.string :role

      t.timestamps
    end
    add_index :meeting_employees, :meeting_id
  end
end
