class CreateCriticalPaths < ActiveRecord::Migration[5.2]
  def change
    create_table :critical_paths do |t|
      t.references :organization
      t.references :employee
      t.string :project_name
      t.timestamps
    end
    add_index :critical_paths, :organization_id
    add_index :critical_paths, :employee_id
  end
end
