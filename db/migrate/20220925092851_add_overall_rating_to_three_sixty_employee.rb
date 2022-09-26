class AddOverallRatingToThreeSixtyEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :rating, :integer, default: nil
  end
end
