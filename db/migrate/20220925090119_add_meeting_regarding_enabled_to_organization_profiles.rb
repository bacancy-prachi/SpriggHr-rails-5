class AddMeetingRegardingEnabledToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :meeting_regarding_enabled, :boolean, default: false
  end
end
