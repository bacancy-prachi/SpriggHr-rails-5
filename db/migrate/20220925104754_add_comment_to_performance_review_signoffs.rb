class AddCommentToPerformanceReviewSignoffs < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_review_signoffs, :comment, :text
  end
end
