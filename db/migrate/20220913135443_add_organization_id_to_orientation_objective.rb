class AddOrganizationIdToOrientationObjective < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_objectives, :organization_id, :integer
  end
end
