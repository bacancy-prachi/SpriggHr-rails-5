class CreateEmployeeOrientationChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_orientation_checklist_items do |t|
      t.timestamps null: false
      t.integer :employee_id
      t.integer :orientation_checklist_item_id
      t.boolean :completed, default: false
    end
  end
end
