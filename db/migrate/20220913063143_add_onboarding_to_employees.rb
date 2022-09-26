class AddOnboardingToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :onboarding, :boolean, default: false
  end
end
