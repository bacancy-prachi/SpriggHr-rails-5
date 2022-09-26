class RemoveDevelopmentPlanGoals < ActiveRecord::Migration[5.2]
  def change
    drop_table :development_plan_goals
  end
end
