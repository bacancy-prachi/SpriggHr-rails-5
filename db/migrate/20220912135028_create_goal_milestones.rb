class CreateGoalMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_milestones do |t|
      t.references :goal
      t.string :milestone_name
      t.date :milestone_date
      t.text :milestone_note
      t.string :milestone_status

      t.timestamps
    end
    add_index :goals, :id
  end
end
