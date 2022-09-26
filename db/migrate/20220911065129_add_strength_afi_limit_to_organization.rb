class AddStrengthAfiLimitToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :coaching_worksheet_item_limit, :integer, default: 5

    Organization.all.each do |org|
      org.coaching_worksheet_item_limit = 5 if org.coaching_worksheet_item_limit.blank?
    end
  end
end
