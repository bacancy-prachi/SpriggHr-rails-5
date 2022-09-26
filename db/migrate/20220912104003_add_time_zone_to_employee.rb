class AddTimeZoneToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :time_zone, :string
  end
end
