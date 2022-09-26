class AddPipLevelToPerformanceImprovement < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_improvements, :pip_level, :text, default: nil
  end
end
