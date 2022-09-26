class AddReviewSummaryToPerformanceReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :review_summary, :text
  end
end
