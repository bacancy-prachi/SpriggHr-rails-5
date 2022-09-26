class AddYearToMytimeHolidays < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_holidays, :year, :integer, null: false

    MytimeHoliday.all.each do |holiday|
      holiday.update_attribute(:year, 2017)
    end
  end
end
