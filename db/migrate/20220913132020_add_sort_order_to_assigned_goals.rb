class AddSortOrderToAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goals, :sort_order, :integer

    Organization.all.each do |org|
      # Create Sort Order Values for 2013 Year
      counter = 1
      org.assigned_goals.where('year = 2013').each do |assignend_goal|
        assignend_goal.sort_order = counter
        assignend_goal.save
        counter = counter + 1
      end

      # Create Sort Order Values for 2014 Year
      counter_2014 =  1
      org.assigned_goals.where('year = 2014').each do |assignend_goal|
        assignend_goal.sort_order = counter_2014
        assignend_goal.save
        counter_2014 = counter_2014 + 1
      end

      # Create Sort Order Values for 2015 Year
      counter_2015 =  1
      org.assigned_goals.where('year = 2015').each do |assignend_goal|
        assignend_goal.sort_order = counter_2015
        assignend_goal.save
        counter_2015 = counter_2015 + 1
      end

      # Create Sort Order Values for 2014 Year
      counter =  1
      org.assigned_goals.where('year = 2016').each do |assignend_goal|
        assignend_goal.sort_order = counter
        assignend_goal.save
        counter = counter + 1
      end

      # Create Sort Order Values for 2014 Year
      counter =  1
      org.assigned_goals.where('year = 2017').each do |assignend_goal|
        assignend_goal.sort_order = counter
        assignend_goal.save
        counter = counter + 1
      end
    end
  end
end
