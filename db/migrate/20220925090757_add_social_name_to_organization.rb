class AddSocialNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :social_name, :string, default: 'Social'
  end
end
