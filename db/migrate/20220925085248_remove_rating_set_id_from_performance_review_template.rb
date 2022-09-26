class RemoveRatingSetIdFromPerformanceReviewTemplate < ActiveRecord::Migration[5.2]
  def change
    remove_column :performance_review_templates, :rating_set_id
  end
end
