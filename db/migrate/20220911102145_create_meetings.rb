class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :start
      t.integer :minutes_length
      t.references :meetable, polymorphic: true
      t.timestamps
    end
  end
end
