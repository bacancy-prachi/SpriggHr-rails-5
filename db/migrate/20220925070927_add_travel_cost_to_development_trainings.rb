class AddTravelCostToDevelopmentTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :development_trainings, :travel_cost, :integer
    add_column :development_trainings, :travel_cost_currency, :string, default: "$"
  end
end
