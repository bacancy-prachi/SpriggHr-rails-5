class AddTypeToCompetencyStatements < ActiveRecord::Migration[5.2]
  def change
    add_column :competency_statements, :statement_type, :string, default: nil
  end
end
