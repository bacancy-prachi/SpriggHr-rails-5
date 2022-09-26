class AddGoalRatingToPerformanceReviewTemplate < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_review_templates, :goal_ratings_enabled, :boolean, null: false, default: true
    add_column :evaluations, :goal_ratings_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :goals_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :comp_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :wgt_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :rating_scores_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :static_ratings_enabled, :boolean, null: false, default: true
    add_column :three_sixty_reviews, :goal_ratings_enabled, :boolean, null: false, default: true
  end
end
