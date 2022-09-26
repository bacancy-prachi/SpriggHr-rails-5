class CreateFeedbackRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_requests do |t|
      t.references :employee
      t.integer :target_id
      t.string :subject, null: false, default: ""
      t.string :linked_competency
      t.timestamps
    end
    add_index :feedback_requests, :employee_id
    add_index :feedback_requests, :target_id
  end
end
