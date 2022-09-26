class CreateEvaluationCompetencyStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_competency_statements do |t|
      t.references :evaluation_competency
      t.references :competency_statement
      t.references :evaluation
      t.text :question
      t.integer :rating

      t.timestamps
    end
    add_index :evaluation_competency_statements, :evaluation_competency_id, name: 'idx_eval_comp_statements_on_eval_comp_id'
    add_index :evaluation_competency_statements, :competency_statement_id, name: 'idx_eval_comp_statements_on_comp_statement_id'
    add_index :evaluation_competency_statements, :evaluation_id
  end
end
