class CreateGoalObjCorpAlignmnets < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_obj_corp_alignmnets do |t|
      t.references :goal
      t.references :objectives_corp

      t.timestamps
    end
    add_index :goal_obj_corp_alignmnets, :goal_id
    add_index :goal_obj_corp_alignmnets, :objectives_corp_id
  end
end
