class CreateEmployeeInfractions < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_infractions do |t|
      t.references :employee, null: false
      t.string :name, null: false
      t.text :description, null: true
      t.string :point_value, null: false
      t.string :shift, null: false
      t.string :manager_on_duty, null: true
      t.text :comment, null: true
      t.timestamps
    end
  end
end
