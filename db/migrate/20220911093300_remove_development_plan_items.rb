class RemoveDevelopmentPlanItems < ActiveRecord::Migration[5.2]
  def change
    drop_table :development_plan_items
  end
end
