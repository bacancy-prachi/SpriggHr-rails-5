class AddFullEvaluationToEvaluationCoreValues < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_core_values, :full_evaluation, :boolean, default: true
  end
end
