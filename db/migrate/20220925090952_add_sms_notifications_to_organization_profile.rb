class AddSmsNotificationsToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :sms_notifications, :boolean, default: false
  end
end
