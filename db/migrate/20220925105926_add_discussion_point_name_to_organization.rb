class AddDiscussionPointNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :discussion_point_name, :string, default: "Discussion Points"
  end
end
