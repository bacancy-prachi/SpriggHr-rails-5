class AddCoreValuesNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :core_values_name, :string, default: "Core Values"
  end
end
