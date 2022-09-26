class AddWeightSplitToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :goal_weight, :integer
    add_column :evaluations, :competency_weight, :integer

    remove_column :performance_reviews, :goal_weight
    remove_column :performance_reviews, :competency_weight
  end
end
