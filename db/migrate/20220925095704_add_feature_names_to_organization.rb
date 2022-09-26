class AddFeatureNamesToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :smart_goal_name, :string, default: 'SMART'
    add_column :organizations, :mysprigg_name, :string, default: 'My Sprigg'
    add_column :organizations, :checkin_meeting_name, :string, default: 'Check-In Meetings'
  end
end
