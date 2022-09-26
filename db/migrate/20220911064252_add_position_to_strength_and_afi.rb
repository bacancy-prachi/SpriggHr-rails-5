class AddPositionToStrengthAndAfi < ActiveRecord::Migration[5.2]
  def change
    add_column :strengths, :position, :integer
    add_column :area_for_improvements, :position, :integer
  end
end
