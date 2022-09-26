class CreateGroupCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :group_competencies do |t|
      t.references :group
      t.references :competency
      t.belongs_to :inherited_from
      t.integer :priority
      t.boolean :enabled, :default => true


      t.timestamps
    end
    add_index :group_competencies, :group_id
    add_index :group_competencies, :competency_id
  end
end
