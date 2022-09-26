class RemoveOldEmployeeManagerRelationships < ActiveRecord::Migration[5.2]
  def change
    drop_table :employee_relationships
  end
end
