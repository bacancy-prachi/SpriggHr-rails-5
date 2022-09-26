class AddPositionToOrientationChecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_checklists, :position, :integer
  end
end
