class AddPrimaryTeamToGroupEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :group_employees, :primary, :boolean, default: false
  end
end
