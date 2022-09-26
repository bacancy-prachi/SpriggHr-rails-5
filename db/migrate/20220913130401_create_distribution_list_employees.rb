class CreateDistributionListEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :distribution_list_employees do |t|
      t.integer :employee_id
      t.integer :distribution_list_id
      t.timestamps
    end
  end
end
