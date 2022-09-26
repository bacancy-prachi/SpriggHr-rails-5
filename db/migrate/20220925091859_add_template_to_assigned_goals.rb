class AddTemplateToAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goals, :template, :boolean, default: false
  end
end
