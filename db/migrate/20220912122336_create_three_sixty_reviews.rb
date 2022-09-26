class CreateThreeSixtyReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :three_sixty_reviews do |t|
      t.references :cycle
      t.boolean :completed
      t.date :completed_at

      t.timestamps
    end
    add_index :three_sixty_reviews, :cycle_id
  end
end
