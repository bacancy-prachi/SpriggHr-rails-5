class AddAcceptStatusToThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :three_sixty_employees, :accepted
    add_column :three_sixty_employees, :invite_status, :string, default: "open"
  end
end
