class AddMsgFromPresidentToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :msg_from_president, :text
  end
end
