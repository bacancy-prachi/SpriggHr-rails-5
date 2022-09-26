class AddSampleGoalToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :sample_goal, :text
  end
end
