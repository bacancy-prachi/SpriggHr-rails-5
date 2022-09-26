class AddYearToGroupObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :group_objectives, :year, :integer, default: Date.today.year
  end
end
