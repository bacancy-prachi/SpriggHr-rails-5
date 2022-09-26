class AddLinkedCoreValueToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :linked_core_value, :text, default: nil
  end
end
