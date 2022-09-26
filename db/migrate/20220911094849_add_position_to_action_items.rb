class AddPositionToActionItems < ActiveRecord::Migration[5.2]
  def change
    add_column :action_items, :position, :integer
  end
end
