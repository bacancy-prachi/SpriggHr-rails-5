class AddStatusToGoalMilestoneAssisties < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_milestone_assisties, :assisties_status, :string
  end
end
