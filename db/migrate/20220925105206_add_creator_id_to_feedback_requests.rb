class AddCreatorIdToFeedbackRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :feedback_requests, :creator_id, :integer
    add_index :feedback_requests, :creator_id
  end
end
