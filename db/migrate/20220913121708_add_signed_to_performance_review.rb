class AddSignedToPerformanceReview < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :signed, :boolean, default: false
  end
end
