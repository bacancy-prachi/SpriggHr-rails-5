class AddPrivateAndSubmitterToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :manager_id
    remove_column :feedbacks, :submission_id
    add_column :feedbacks, :submitter_id, :integer
    add_column :feedbacks, :feedback_type, :string, default: "private"
  end
end
