class AddManagerNotesAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :manager_notes_access, :boolean, default: false
  end
end
