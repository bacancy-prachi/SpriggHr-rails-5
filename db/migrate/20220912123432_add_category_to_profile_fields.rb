class AddCategoryToProfileFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :profile_fields, :public
    add_column :profile_fields, :field_type, :string, default: "public"
  end
end
