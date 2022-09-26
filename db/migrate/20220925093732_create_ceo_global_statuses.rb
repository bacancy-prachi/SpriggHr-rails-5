class CreateCeoGlobalStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :ceo_global_statuses do |t|
      t.integer :employee_id
      t.date :date
      t.decimal :personal_status
      t.string :personal_comments
      t.integer :business_status
      t.string :business_comments
      t.integer :kpi_status
      t.string :kpi_comments

      t.timestamps
    end
  end
end
