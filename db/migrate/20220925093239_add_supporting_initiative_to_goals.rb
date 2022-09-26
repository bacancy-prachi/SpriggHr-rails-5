class AddSupportingInitiativeToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :supporting_initiative, :text, default: nil
  end
end
