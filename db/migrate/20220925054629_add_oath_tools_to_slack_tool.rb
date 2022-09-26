class AddOathToolsToSlackTool < ActiveRecord::Migration[5.2]
  def change
    add_column :slack_tools, :access_token, :string
    add_column :slack_tools, :state_key, :string
    add_column :slack_tools, :admin_url, :string
  end
end
