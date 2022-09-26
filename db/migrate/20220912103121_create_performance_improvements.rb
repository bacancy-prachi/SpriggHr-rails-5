class CreatePerformanceImprovements < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_improvements do |t|
      t.text :issue_description
      t.string :reason
      t.date :by_when_date
      t.text :action_description
      t.date :follow_up_meeting_date
      t.integer :manager_id
      t.references :employee

      t.timestamps
    end
    add_index :performance_improvements, :employee_id
  end
end
