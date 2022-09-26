class AddRatingSetRatingScoresStaticRatingsToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :rating_scores_enabled, :boolean, null: false, default: true
    add_column :evaluations, :static_ratings_enabled, :boolean, null: false, default: false
  end
end
