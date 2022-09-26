class CreateProbationaryGoalObjCorpAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_obj_corp_alignments do |t|
      t.references :probationary_goal
      t.references :objectives_corp

      t.timestamps
    end
    add_index :probationary_goal_obj_corp_alignments, :probationary_goal_id, name: 'pro_goal_obj_corp_align_on_pro_goal_id_index'
    add_index :probationary_goal_obj_corp_alignments, :objectives_corp_id, name: 'pro_goal_obj_corp_align_on_obj_corp_id_index'
  end
end
