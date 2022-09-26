class CreateManagerOrientationChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_orientation_checklist_items do |t|
      t.timestamps null: false
      t.integer  :employee_id
      t.integer  :orientated_employee_id
      t.integer  :orientation_checklist_item_id
      t.boolean  :completed, default: false
    end
  end
end
