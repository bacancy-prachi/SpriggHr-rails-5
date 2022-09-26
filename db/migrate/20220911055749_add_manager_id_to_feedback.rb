class AddManagerIdToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :manager_id, :integer
  end
end
