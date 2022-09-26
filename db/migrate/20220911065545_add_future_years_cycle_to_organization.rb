class AddFutureYearsCycleToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :future_cycles_allowed, :integer, default: 0
  end
end
