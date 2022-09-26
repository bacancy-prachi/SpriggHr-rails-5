class AddLastPasswordResetAtToLogin < ActiveRecord::Migration[5.2]
  def change
    add_column :logins, :last_password_reset, :date, default: Date.today
  end
end
