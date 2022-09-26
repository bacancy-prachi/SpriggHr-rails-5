class AddStartAndEndDateToDevelopmentActivites < ActiveRecord::Migration[5.2]
  def change
    add_column :development_activities, :start_date, :date
    add_column :development_activities, :end_date, :date
  end
end
