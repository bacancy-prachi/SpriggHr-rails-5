class CreateAssignedGoalGroupAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_group_assigned_goals do |t|
      t.references :assigned_goal_group
      t.references :assigned_goal
      t.timestamps
    end
    add_index :assigned_goal_group_assigned_goals, :assigned_goal_group_id, name: 'agg_assigned_goal_group_id_index'
    add_index :assigned_goal_group_assigned_goals, :assigned_goal_id, name: 'agg_assigned_goal_id_index'
  end
end
