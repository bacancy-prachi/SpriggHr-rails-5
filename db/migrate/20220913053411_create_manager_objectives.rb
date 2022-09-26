class CreateManagerObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_objectives do |t|
      t.timestamps null: false
      t.integer :employee_id
      t.integer :orientated_employee_id
      t.integer :orientation_objective_id
      t.integer :orientation_objective_rating
    end
  end
end
