class AddThreeSixtyGuestToThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :guest_email, :string
    add_column :three_sixty_employees, :guest_name, :string
    add_column :three_sixty_employees, :guest_token, :string
  end
end
