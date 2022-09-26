class AddLocalAdminToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :local_admin, :boolean, default: false
  end
end
