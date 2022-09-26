class AddProbationaryPeriodToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :probationary_period, :integer, default: 3
  end
end
