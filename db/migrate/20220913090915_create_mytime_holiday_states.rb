class CreateMytimeHolidayStates < ActiveRecord::Migration[5.2]
  def change
  #   create_table :mytime_holiday_states, id: true do |t|
  #     t.integer :mytime_holiday_id
  #     t.integer :state_id
  #   end
 
  #   add_column :mytime_holidays, :country_id, :integer
 
  # MytimeHoliday.all.each do |holiday|
  #   if (holiday.state_id >= 1 && holiday.state_id <= 16) then
  #     holiday.update_attribute(:country_id, 3)
  #     if (holiday.enabled_for_all_country == true) then
  #       for i in 1..16
  #         MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => i)
  #       end
  #     else
  #       MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => holiday.state_id)
  #     end
  #   end
  #   if (holiday.state_id >= 17 && holiday.state_id <= 29) then
  #     holiday.update_attribute(:country_id, 1)
  #     if (holiday.enabled_for_all_country == true) then
  #       for i in 17..29
  #         MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => i)
  #       end
  #     else
  #       MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => holiday.state_id)
  #     end
  #   end
  #   if (holiday.state_id >= 30 && holiday.state_id <= 85) then
  #     holiday.update_attribute(:country_id, 2)
  #     if (holiday.enabled_for_all_country == true) then
  #       for i in 30..85
  #         MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => i)
  #       end
  #     else
  #       MytimeHolidayState.create(:mytime_holiday_id => holiday.id,:state_id => holiday.state_id)
  #     end
  #   end
  # end
 
  # remove_column :mytime_holidays, :state_id
  # remove_column :mytime_holidays, :enabled_for_all_country
  end
end
