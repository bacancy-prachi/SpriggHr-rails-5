class AddPasswordResetFlagToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :password_reset, :boolean, default: false
  end
end
