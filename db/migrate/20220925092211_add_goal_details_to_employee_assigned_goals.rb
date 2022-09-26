class AddGoalDetailsToEmployeeAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_employees, :priority, :integer, null:true
    add_column :assigned_goal_employees, :deadline, :date, null:true
    add_column :assigned_goal_employees, :metric_type, :string, null:true
  end
end
