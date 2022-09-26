class AddPositionToCoachingInputItems < ActiveRecord::Migration[5.2]
  def change
    add_column :coaching_input_items, :position, :integer
  end
end
