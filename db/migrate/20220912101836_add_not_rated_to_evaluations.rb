class AddNotRatedToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_goals, :skip_rating, :boolean, default: false
    add_column :evaluation_competencies, :skip_rating, :boolean, default: false
    add_column :evaluation_team_goals, :skip_rating, :boolean, default: false
  end
end
