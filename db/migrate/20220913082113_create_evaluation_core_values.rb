class CreateEvaluationCoreValues < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_core_values do |t|
      t.references :core_value
      t.references :evaluation
      t.integer :rating, default: 0
      t.text :comments

      t.timestamps
    end
  end
end
