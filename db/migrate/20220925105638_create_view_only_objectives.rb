class CreateViewOnlyObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :view_only_objectives do |t|
      t.references :organization
      t.string :name
      t.string :description
      t.boolean :archived
      t.references :employee
      t.integer :year

      t.timestamps
    end
  end
end
