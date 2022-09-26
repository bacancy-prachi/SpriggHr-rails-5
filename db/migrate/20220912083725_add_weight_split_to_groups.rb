class AddWeightSplitToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :goal_weight, :integer, default: 50
    add_column :groups, :competency_weight, :integer, default: 50
  end
end
