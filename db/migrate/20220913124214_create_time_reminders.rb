class CreateTimeReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :time_reminders do |t|
      t.integer :organization_id
      t.string :name
      t.date :send_date
      t.text :subject
      t.text :body
      t.timestamps
    end
  end
end
