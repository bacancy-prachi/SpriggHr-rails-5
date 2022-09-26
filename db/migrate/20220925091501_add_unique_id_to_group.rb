class AddUniqueIdToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :unique_id, :string, default: nil
  end
end
