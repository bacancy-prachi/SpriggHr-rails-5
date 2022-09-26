class AddResourcesToOrientationChecklistItems < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_checklist_items, :resources, :text
    remove_column :orientation_checklists, :resources
  end
end
