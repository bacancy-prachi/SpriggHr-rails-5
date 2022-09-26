class CreateObjectivesCorps < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives_corps do |t|
      t.references :organization
      t.string :corp_obj_name
      t.text :corp_obj_description
      t.boolean :corp_obj_archived

      t.timestamps
    end
    add_index :objectives_corps, :organization_id
  end
end
