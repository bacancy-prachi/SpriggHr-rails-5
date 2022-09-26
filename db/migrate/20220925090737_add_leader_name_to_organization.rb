class AddLeaderNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :leader_name, :string, default: 'Leader'
  end
end
