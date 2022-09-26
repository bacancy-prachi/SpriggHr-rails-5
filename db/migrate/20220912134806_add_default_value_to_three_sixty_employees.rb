class AddDefaultValueToThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    change_column :three_sixty_employees, :completed, :boolean, default: false
  end
end
