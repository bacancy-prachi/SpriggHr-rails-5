class AddAnonymousToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :anonymous, :boolean, default: false
  end
end
