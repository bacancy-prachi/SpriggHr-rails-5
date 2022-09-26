class AddSortOrderToProfileFields < ActiveRecord::Migration[5.2]
  def change
    add_column :profile_fields, :sort_order, :integer
  end
end
