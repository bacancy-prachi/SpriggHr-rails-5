class CreateCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :competencies do |t|
      t.string :comp_name
      t.text :description
      t.references :organization

      t.timestamps
    end
    add_index :competencies, :organization_id
  end
end
