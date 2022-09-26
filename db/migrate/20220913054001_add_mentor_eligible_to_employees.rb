class AddMentorEligibleToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :mentor_eligible, :boolean, default: false
  end
end
