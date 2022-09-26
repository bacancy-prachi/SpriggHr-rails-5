class AddTitleToDevelopmentPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :development_plans, :plan_name, :string
  end
end
