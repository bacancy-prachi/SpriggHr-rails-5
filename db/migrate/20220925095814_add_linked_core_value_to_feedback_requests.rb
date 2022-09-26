class AddLinkedCoreValueToFeedbackRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :feedback_requests, :linked_core_value, :text, default: nil
  end
end
