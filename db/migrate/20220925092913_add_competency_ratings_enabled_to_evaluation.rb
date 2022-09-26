class AddCompetencyRatingsEnabledToEvaluation < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :competency_ratings_enabled, :boolean, null: false, default: true
  end
end
