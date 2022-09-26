class AddDistributionListIdToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :group_feedback_id, :integer
    add_column :feedbacks, :group_feedback_grouping, :integer
    add_column :feedbacks, :group_feedback_type, :string
  end
end
