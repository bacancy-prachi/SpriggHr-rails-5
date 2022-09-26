class AddMetricTypeToAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goals, :metric_type, :string, null:false, default: 'metric'
  end
end
