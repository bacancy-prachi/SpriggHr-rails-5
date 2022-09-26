class CreateEvaluationRatingSets < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_rating_sets do |t|
      t.string :name, null: true
      t.references :evaluation, null: false
      t.timestamps
    end
    add_index :evaluation_rating_sets, :evaluation_id
  end
end
