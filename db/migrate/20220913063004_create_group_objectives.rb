class CreateGroupObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :group_objectives do |t|
      t.references :group
      t.string :obj_name
      t.text :obj_desc

      t.timestamps
    end

    add_index :group_objectives, :group_id
  end
end
