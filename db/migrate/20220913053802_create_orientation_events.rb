class CreateOrientationEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_events do |t|
      t.references :employee
      t.string :title
      t.date :start
      t.date :end
      t.string :event_type
      t.integer :event_id

      t.timestamps
    end

    add_index :orientation_events, :employee_id
  end
end
