class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.references :performance_review
      t.references :employee
      t.boolean :completed
      t.date :completed_at
      t.string :evaluation_type

      t.timestamps
    end
    add_index :evaluations, :performance_review_id
    add_index :evaluations, :employee_id
  end
end
