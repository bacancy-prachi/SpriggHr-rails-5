class CreatePerformanceReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_reviews do |t|
      t.references :cycle
      t.integer :competency_weight
      t.integer :goal_weight
      t.date :completed_at
      t.boolean :completed

      t.timestamps
    end
    add_index :performance_reviews, :cycle_id
  end
end
