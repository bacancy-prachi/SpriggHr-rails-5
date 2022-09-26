class CreateClientFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :client_feedbacks do |t|
      t.references :employee
      t.integer :submitter_id
      t.string :client_name
      t.string :subject
      t.text :message

      t.timestamps
    end
    add_index :client_feedbacks, :employee_id
  end
end
