class AddPriorityToEvaluationRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_competencies, :priority, :integer
    add_column :evaluation_team_goals, :priority, :integer
    add_column :evaluation_goals, :priority, :integer
  end
end
