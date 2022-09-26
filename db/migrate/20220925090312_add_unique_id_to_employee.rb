class AddUniqueIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :unique_id, :string, default: nil
  end
end
