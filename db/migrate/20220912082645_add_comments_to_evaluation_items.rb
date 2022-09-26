class AddCommentsToEvaluationItems < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_goals, :comment, :text
    add_column :evaluation_competencies, :comment, :text
  end
end
