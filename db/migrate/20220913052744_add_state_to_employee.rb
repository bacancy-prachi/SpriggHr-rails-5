class AddStateToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :state_id, :integer
  end
end
