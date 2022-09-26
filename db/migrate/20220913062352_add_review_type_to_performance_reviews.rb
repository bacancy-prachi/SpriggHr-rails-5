class AddReviewTypeToPerformanceReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :review_type, :string, default: 'midyear'
  end
end
