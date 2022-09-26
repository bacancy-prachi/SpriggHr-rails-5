class CreateCompaRatioSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :compa_ratio_salaries do |t|
      t.references :organization_position, null: false, index: true
      t.integer :market_salary, null: false
      t.timestamps
    end
  end
end
