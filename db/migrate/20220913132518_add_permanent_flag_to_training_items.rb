class AddPermanentFlagToTrainingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :training_items, :permanent, :boolean, default: true
  end
end
