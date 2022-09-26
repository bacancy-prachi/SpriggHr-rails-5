class CreateNextLevelLeaderReviewComments < ActiveRecord::Migration[5.2]
  def change
    create_table :next_level_leader_review_comments do |t|
      t.references :performance_review
      t.references :employee
      t.text :comment

      t.timestamps
    end
    add_index :next_level_leader_review_comments, :performance_review_id
    add_index :next_level_leader_review_comments, :employee_id
  end
end
