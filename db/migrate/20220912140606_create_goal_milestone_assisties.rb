class CreateGoalMilestoneAssisties < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_milestone_assisties do |t|
      t.references :goal_milestone
      t.references :employee

      t.timestamps
    end
    add_index :goal_milestone_assisties, :goal_milestone_id
    add_index :goal_milestone_assisties, :employee_id
  end
end
