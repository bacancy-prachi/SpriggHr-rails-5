class AddMetricTypeToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :metric_type, :string, null:false, default: 'metric'
  end
end
