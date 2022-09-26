class GoalObjGroupAlignment < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_obj_group_alignments do |t|
      t.references :goal
      t.references :group_objective

      t.timestamps
    end
    add_index :goal_obj_group_alignments, :goal_id
    add_index :goal_obj_group_alignments, :group_objective_id
  end
end
