class CreateEvaluationRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_ratings do |t|
      t.string :rating_name
      t.integer :range_low
      t.integer :range_high
      t.integer :static_value
      t.string :colour
      t.text :description
      t.references :evaluation_rating_set, null: false
      t.timestamps
    end
    add_index :evaluation_ratings, :evaluation_rating_set_id
  end
end
