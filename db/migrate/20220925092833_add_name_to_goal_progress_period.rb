class AddNameToGoalProgressPeriod < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_progress_periods, :name, :string
  end
end
