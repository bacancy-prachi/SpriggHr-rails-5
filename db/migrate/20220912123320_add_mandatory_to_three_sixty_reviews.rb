class AddMandatoryToThreeSixtyReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_reviews, :mandatory, :boolean, default: true
  end
end
