class RemoveConfigColumnsFromOrganization < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :policy
    remove_column :organizations, :values
    remove_column :organizations, :mission
    remove_column :organizations, :managers_role
    remove_column :organizations, :employees_role
    remove_column :organizations, :coaching_worksheet_item_limit
    remove_column :organizations, :future_cycles_allowed
  end
end
