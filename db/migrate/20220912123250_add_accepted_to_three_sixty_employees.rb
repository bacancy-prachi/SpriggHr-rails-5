class AddAcceptedToThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :accepted, :boolean, default: false
  end
end
