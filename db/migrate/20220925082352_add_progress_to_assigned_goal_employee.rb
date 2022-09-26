class AddProgressToAssignedGoalEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_employees, :progress, :string, null: false, default: 'notstarted'

    AssignedGoalEmployee.all.each do |age|
      if age.assigned_goal_updates.empty?
        age.update_attribute(:progress, 'notstarted')
      else
        completed_progress = age.assigned_goal_updates.where(:status => 'Completed')
        if completed_progress.empty?
          age.update_attribute(:progress, 'started')
        else
          age.update_attribute(:progress, 'complete')
        end
      end
    end
  end
end
