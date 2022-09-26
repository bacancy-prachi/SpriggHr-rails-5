class CreatePositionCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :position_competencies do |t|
      t.references :organization_position
      t.references :competency
      t.integer :priority
      t.boolean :enabled, default: true

      t.timestamps
    end
    add_index :position_competencies, :organization_position_id
    add_index :position_competencies, :competency_id
  end
end
