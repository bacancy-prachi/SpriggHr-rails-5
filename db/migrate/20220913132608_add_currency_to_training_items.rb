class AddCurrencyToTrainingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :training_items, :currency, :string, default: "$"
  end
end
