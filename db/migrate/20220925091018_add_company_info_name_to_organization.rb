class AddCompanyInfoNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :company_info_name, :string, default: 'Company Info'
  end
end
