class CreateMentorships < ActiveRecord::Migration[5.2]
  def change
    create_table :mentorships do |t|
      t.integer :oriented_employee_id
      t.integer :orientation_buddy_id

      t.timestamps null: false
    end
  end
end
