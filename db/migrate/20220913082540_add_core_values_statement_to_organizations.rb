class AddCoreValuesStatementToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :core_values_statement, :string, default: 'Have all Core Values expectations been met?'
  end
end
