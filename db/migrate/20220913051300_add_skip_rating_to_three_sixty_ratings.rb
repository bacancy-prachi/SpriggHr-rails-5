class AddSkipRatingToThreeSixtyRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :skip_rating, :boolean
  end
end
