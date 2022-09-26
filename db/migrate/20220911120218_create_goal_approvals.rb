class CreateGoalApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_approvals do |t|
      t.references :goal
      t.references :employee
      t.text :comment
      t.string :approval_type

      t.timestamps
    end
    add_index :goal_approvals, :goal_id
    add_index :goal_approvals, :employee_id
  end
end
