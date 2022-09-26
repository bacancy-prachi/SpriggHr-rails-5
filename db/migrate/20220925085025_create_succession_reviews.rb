class CreateSuccessionReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :succession_reviews do |t|
      t.references :cycle, null: false
      t.string :promise_rank, null: true
      t.text :promise_description, null: true
      t.string :readiness_rank, null: true
      t.text :readiness_description, null: true
      t.timestamps
    end
    add_index :succession_reviews, :cycle_id
  end
end
