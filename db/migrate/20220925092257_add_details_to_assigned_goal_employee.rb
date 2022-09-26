class AddDetailsToAssignedGoalEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_employees, :details, :text, null:true
  end
end
