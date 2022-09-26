class AddSendSlackToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :send_slack, :boolean, default: false
  end
end
