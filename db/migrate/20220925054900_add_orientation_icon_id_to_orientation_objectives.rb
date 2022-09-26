class AddOrientationIconIdToOrientationObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_objectives, :orientation_icon_id, :integer
  end
end
