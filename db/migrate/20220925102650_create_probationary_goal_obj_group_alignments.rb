class CreateProbationaryGoalObjGroupAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_obj_group_alignments do |t|
      t.references :probationary_goal
      t.references :group_objective

      t.timestamps
    end
    add_index :probationary_goal_obj_group_alignments, :probationary_goal_id, name: 'pro_goal_obj_group_align_on_pro_goal_id_index'
    add_index :probationary_goal_obj_group_alignments, :group_objective_id, name: 'pro_goal_obj_group_align_on_group_obj_id_index'
  end
end
