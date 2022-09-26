class AddThreeSixtyReferenceToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :three_sixty_review_id, :integer
  end
end
