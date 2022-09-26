class CreateThreeSixtyRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :three_sixty_ratings do |t|
      t.integer :rating
      t.references :employee
      t.references :three_sixty_statement

      t.timestamps
    end
    add_index :three_sixty_ratings, :three_sixty_statement_id
  end
end
