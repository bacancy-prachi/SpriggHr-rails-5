class AddDeadlinePriorityToThreeSixtyRating < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :deadline, :date, default: nil
    add_column :three_sixty_ratings, :priority, :integer, default: nil
  end
end
