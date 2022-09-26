class AddEvaluationCompetenciesEvidence < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_competencies, :evidence, :text
  end
end
