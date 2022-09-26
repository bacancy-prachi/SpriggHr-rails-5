class AddOverallCommentToThreeSixty < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :overall_comment, :text
  end
end
