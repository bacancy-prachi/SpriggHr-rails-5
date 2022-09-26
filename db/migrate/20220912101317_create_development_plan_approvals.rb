class CreateDevelopmentPlanApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plan_approvals do |t|
      t.references :development_plan
      t.references :employee
      t.text :comment
      t.string :approval_type

      t.timestamps
    end
    add_index :development_plan_approvals, :development_plan_id
    add_index :development_plan_approvals, :employee_id
  end
end
