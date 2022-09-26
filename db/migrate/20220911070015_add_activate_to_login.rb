class AddActivateToLogin < ActiveRecord::Migration[5.2]
  def change
    add_column :logins, :active, :boolean, default: false, null: false
    add_column :logins, :approved, :boolean, default:true, null: false

    Login.all.each do |login|
      login.update_attribute(:active, true)
    end
  end
end
