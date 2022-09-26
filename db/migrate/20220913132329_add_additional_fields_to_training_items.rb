class AddAdditionalFieldsToTrainingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :training_items, :attendance_date, :date
    add_column :training_items, :duration, :integer
    add_column :training_items, :location, :string
    add_column :training_items, :cost, :integer
  end
end
