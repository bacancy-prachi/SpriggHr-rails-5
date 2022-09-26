class AddStatusToLoadSheet < ActiveRecord::Migration[5.2]
  def change
    add_column :load_sheets, :status, :string
  end
end
