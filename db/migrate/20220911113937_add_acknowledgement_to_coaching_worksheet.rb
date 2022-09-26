class AddAcknowledgementToCoachingWorksheet < ActiveRecord::Migration[5.2]
  def change
    add_column :coaching_worksheets, :acknowledged, :boolean
  	add_column :coaching_worksheets, :acknowledged_date, :date
  end
end
