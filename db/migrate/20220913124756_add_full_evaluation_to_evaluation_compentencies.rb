class AddFullEvaluationToEvaluationCompentencies < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_competencies, :full_evaluation, :boolean, default: true
  end
end
