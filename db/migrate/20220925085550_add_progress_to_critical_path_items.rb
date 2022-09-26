class AddProgressToCriticalPathItems < ActiveRecord::Migration[5.2]
  def change
    add_column :critical_path_items, :progress, :text
  end
end
