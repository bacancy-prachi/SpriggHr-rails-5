class AddFullEvaluationToEvaluationGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_goals, :full_evaluation, :boolean, default: true
  end
end