class AddCommentToThreeSixtyRating < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_ratings, :comment, :text
  end
end
