class AddSsoMandatoryToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :sso_mandatory, :boolean, default: false
  end
end
