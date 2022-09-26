class CreateEvaluationCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_competencies do |t|
      t.references :competency
      t.references :evaluation
      t.integer :rating
      t.integer :competency_version

      t.timestamps
    end
    add_index :evaluation_competencies, :competency_id
    add_index :evaluation_competencies, :evaluation_id
  end
end
