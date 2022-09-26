class AddRatingScalesAndStaticRatingsToPerformanceReviewTemplates < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_review_templates, :rating_scores_enabled, :boolean, null: false, default: true
    add_column :performance_review_templates, :static_ratings_enabled, :boolean, null: false, default: false
    add_column :performance_review_templates, :disabled, :boolean, null: false, default: false

    Organization.all.each do |org|
      org.performance_review_templates.each do |prt|
        prt.update_attributes(rating_scores_enabled: org.settings(:evaluations).rating_scores.to_boolean,
                              static_ratings_enabled: org.settings(:evaluations).use_static_rating.to_boolean)
      end
    end
  end
end
