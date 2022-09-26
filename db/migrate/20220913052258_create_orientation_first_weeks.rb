class CreateOrientationFirstWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_first_weeks do |t|
      t.string :catagory
      t.text :question
      t.references :organization

      t.timestamps
    end
    add_index :orientation_first_weeks, :organization_id
  end
end
