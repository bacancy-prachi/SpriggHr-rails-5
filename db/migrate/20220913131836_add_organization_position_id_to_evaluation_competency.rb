class AddOrganizationPositionIdToEvaluationCompetency < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_competencies, :organization_position_id, :integer
  end
end
