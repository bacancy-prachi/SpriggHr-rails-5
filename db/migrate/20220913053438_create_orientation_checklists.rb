class CreateOrientationChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_checklists do |t|
      t.timestamps null: false
      t.integer :organization_id
      t.string :name, null: false
      t.string :category, null: false
      t.string :employee_type, null: false, default: "employee"
      t.string :timeline, null: false, default: "first_week"
    end
  end
end
