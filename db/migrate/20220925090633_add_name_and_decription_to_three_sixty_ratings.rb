class AddNameAndDecriptionToThreeSixtyRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :name, :string, default: nil
    add_column :three_sixty_ratings, :description, :text, default: nil
  end
end
