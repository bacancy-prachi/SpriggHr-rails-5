class AddAcceptedToPerformanceReview < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :accepted, :boolean
  end
end
