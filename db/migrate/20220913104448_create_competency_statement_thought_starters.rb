class CreateCompetencyStatementThoughtStarters < ActiveRecord::Migration[5.2]
  def change
    create_table :competency_statement_thought_starters do |t|
      t.integer :competency_statement_id
      t.integer :thought_starter_id
    end
  end
end
