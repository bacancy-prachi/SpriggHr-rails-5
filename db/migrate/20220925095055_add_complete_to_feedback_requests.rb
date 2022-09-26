class AddCompleteToFeedbackRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :feedback_requests, :complete, :boolean, default: false
  end
end
