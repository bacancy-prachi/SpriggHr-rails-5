class CreateAssignedGoalGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_groups do |t|
      t.references :organization
      t.string :name
      t.timestamps
    end
    add_index :assigned_goal_groups, :organization_id
  end
end
