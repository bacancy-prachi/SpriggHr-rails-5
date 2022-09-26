class AddResponseToDevPlanUpdates < ActiveRecord::Migration[5.2]
  def change
    add_column :development_plan_updates, :response, :text
  end
end
