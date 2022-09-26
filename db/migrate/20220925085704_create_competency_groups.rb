class CreateCompetencyGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :competency_groups do |t|
      t.references :organization, null: false
      t.string :name, null: false
      t.timestamps
    end
    add_index :competency_groups, :organization_id
  end
end
