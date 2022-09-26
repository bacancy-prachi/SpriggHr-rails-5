class AddMasterGroupBooleanToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :master_group, :boolean
  end
end
