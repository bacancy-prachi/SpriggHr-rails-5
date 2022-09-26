class CreateCoachingWorksheets < ActiveRecord::Migration[5.2]
  def change
    create_table :coaching_worksheets do |t|
      t.boolean :completed, default: 0
      t.date :completed_at
      t.references :cycle

      t.timestamps
    end
  end
end
