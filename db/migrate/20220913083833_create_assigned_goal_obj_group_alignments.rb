class CreateAssignedGoalObjGroupAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_obj_group_alignments do |t|
      t.references :assigned_goal
      t.references :group_objective

      t.timestamps
    end
    add_index :assigned_goal_obj_group_alignments, :assigned_goal_id
    add_index :assigned_goal_obj_group_alignments, :group_objective_id
  end
end
