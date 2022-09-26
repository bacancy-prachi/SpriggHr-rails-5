class AddOriginToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :origin, :string, default: nil
  end
end
