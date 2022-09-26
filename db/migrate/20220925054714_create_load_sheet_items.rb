class CreateLoadSheetItems < ActiveRecord::Migration[5.2]
  def change
    create_table :load_sheet_items do |t|
      t.integer :load_sheet_id, :null => false
      t.integer :sheet_position, :null => false
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :position
      t.date :start_date
      t.integer :base_pay
      t.integer :max_pay
      t.string :team_name
      t.boolean :team_leader
      t.boolean :administrator
      t.boolean :test_user
      t.string :location
      t.boolean :location_admin
      t.timestamps
    end
  end
end
