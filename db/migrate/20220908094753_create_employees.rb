class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employee_number
      t.string :position
      t.date :start_date
      t.text :credentials
      t.references :organization

      t.timestamps
    end

    create_table :employee_relationships, :id => false do |t|

      t.integer :manager_id, :null => false
      t.integer :report_id, :null => false

    end

    add_column :logins, :employee_id, :integer
  end
end
