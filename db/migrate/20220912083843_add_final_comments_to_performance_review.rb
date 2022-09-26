class AddFinalCommentsToPerformanceReview < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :final_comments, :text
  end
end
