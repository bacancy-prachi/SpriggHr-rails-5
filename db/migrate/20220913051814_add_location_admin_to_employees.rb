class AddLocationAdminToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :location_admin, :boolean
  end
end
