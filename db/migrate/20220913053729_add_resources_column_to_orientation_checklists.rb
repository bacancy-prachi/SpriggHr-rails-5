class AddResourcesColumnToOrientationChecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_checklists, :resources, :text
  end
end
