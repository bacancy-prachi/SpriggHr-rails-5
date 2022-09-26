class AddProgressToGoal < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :progress, :string, default: 'started'
  end
end
