class AddCompetencyRatingsEnabledToPerformanceReviewTemplates < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_review_templates, :competency_ratings_enabled, :boolean, null: false, default: true
  end
end
