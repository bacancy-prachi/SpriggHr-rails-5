class AddGoalsEnabledToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :goals_enabled, :boolean, default: nil

    Evaluation.all.each do |eval|
      if eval.goal_weight == 0
        eval.update_attribute(:goals_enabled, false)
      else
        eval.update_attribute(:goals_enabled, true)
      end
    end
  end
end
