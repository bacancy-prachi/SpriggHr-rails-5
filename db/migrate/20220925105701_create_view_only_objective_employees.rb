class CreateViewOnlyObjectiveEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :view_only_objective_employees do |t|
      t.references :view_only_objective
      t.references :employee

      t.timestamps
    end
    add_index :view_only_objective_employees, :view_only_objective_id
    add_index :view_only_objective_employees, :employee_id
  end
end
