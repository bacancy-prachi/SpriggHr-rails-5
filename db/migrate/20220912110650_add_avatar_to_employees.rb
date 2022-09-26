class AddAvatarToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_attachment :employees, :avatar
  end
end
