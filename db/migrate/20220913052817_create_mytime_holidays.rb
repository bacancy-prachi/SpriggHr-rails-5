class CreateMytimeHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :mytime_holidays do |t|
      t.timestamps null: false
      t.integer :organization_id
      t.integer :state_id
      t.string :name, null: false
      t.date :start_date
      t.date :end_date
      t.boolean :enabled, default: true
      t.boolean :enabled_for_all_country, default: false
    end
  end
end
