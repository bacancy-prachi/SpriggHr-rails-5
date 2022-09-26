class AddCodeToPosition < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_positions, :code, :string, default: nil
  end
end
