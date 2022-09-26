class AddMaterialCostQualificationRefreshToTrainingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :training_items, :material_cost, :integer
    add_column :training_items, :material_currency, :string, default: "$"
    add_column :training_items, :qualification, :string
    add_column :training_items, :refresh_date, :date
  end
end
