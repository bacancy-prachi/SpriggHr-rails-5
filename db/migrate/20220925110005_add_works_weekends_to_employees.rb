class AddWorksWeekendsToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :works_weekends, :boolean, default: false
  end
end
