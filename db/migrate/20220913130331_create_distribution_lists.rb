class CreateDistributionLists < ActiveRecord::Migration[5.2]
  def change
    create_table :distribution_lists do |t|
      t.integer :employee_id
      t.string :name
      t.timestamps
    end
  end
end
