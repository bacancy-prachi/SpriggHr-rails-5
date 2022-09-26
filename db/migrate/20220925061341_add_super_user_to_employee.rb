class AddSuperUserToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :super_user, :boolean, default: false
  end
end
