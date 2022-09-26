class AddOrganizationAndPageToHelpMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :help_messages, :organization_id, :integer
    add_column :help_messages, :page, :string
    add_index :help_messages, :organization_id
  end
end
