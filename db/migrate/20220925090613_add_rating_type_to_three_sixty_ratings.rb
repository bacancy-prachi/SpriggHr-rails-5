class AddRatingTypeToThreeSixtyRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :rating_type, :string, default: nil
  end
end
