class AddNameToThreeSixtyReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_reviews, :review_name, :string
  end
end
