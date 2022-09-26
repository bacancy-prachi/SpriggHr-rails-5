class AddEvaluationStatementsEnabledToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :evaluation_statements_enabled, :boolean, default: false
  end
end
