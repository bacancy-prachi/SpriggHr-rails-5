class AddSettingsContentToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :welcome_message, :string, default: 'Welcome to Sprigg'
    add_column :organizations, :sprigg_identifier, :string, default: 'Sprigg'
    add_column :organizations, :corporate_objectives_name, :string, default: 'Corporate Objectives'
    add_column :organizations, :the_sixty_report_name, :string, default: '360 Report'
  end
end
