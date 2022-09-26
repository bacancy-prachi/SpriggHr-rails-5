class AddCompleteToAssignedGoalEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_employees, :complete, :boolean, default: false
  end
end
