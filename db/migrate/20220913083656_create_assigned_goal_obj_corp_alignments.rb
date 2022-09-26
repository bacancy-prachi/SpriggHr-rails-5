class CreateAssignedGoalObjCorpAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_obj_corp_alignments do |t|
      t.references :assigned_goal
      t.references :objectives_corp

      t.timestamps
    end
    add_index :assigned_goal_obj_corp_alignments, :assigned_goal_id
    add_index :assigned_goal_obj_corp_alignments, :objectives_corp_id
  end
end
