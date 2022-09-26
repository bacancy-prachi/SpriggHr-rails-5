class CreateGoalCataAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_cata_alignmnets do |t|
      t.references :goal
      t.integer :cata_id

      t.timestamps
    end
    add_index :goal_cata_alignmnets, :goal_id
    add_index :goal_cata_alignmnets, :cata_id
  end
end
