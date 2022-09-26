class AddValueWeightToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :value_weight, :integer, default: nil
  end
end
