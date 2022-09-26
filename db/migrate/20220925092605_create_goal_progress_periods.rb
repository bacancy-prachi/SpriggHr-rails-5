class CreateGoalProgressPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_progress_periods do |t|
      t.references :organization
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    add_index :goal_progress_periods, :organization_id
  end
end
