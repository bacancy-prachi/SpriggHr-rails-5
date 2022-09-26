class AddTypeAndIdToDevelopmentPlanApprovals < ActiveRecord::Migration[5.2]
  def change
    add_column :development_plan_approvals, :dev_item_type, :string, default: "migrated"
    add_column :development_plan_approvals, :dev_item_id, :integer
  end
end
