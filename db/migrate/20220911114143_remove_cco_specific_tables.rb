class RemoveCcoSpecificTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :action_items
    drop_table :area_for_improvements
    drop_table :area_for_improvements_incidents
    drop_table :coaching_input_items
    drop_table :coaching_input_sheets
    drop_table :coaching_worksheets

    drop_table :development_reccomendations
    drop_table :improvement_goals
    drop_table :incidents
    drop_table :other_items
    drop_table :progress_updates
    drop_table :strengths
    drop_table :strength_goals
    drop_table :strengths_incidents
  end
end
