class CreateCompensationResults < ActiveRecord::Migration[5.2]
  def change
    create_table :compensation_results do |t|
      t.references :cycle
      t.references :organization
      t.references :performance_review
      t.integer :review_score
      t.integer :employee_base_pay
      t.integer :base_pay_adjustment
      t.integer :adjustment_percent

      t.timestamps
    end
    add_index :compensation_results, :cycle_id
    add_index :compensation_results, :performance_review_id
  end
end
