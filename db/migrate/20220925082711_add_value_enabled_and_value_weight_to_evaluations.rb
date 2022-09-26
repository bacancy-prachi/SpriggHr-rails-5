class AddValueEnabledAndValueWeightToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :value_ratings_enabled, :boolean, null: false, default: false
    add_column :evaluations, :value_weight, :integer, null: false, default: 0
  end
end
