class AddCompetencyNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :competency_name, :string, default: 'Competencies'
  end
end
