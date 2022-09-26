class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :cycle
      t.references :employee
      t.string :task_type
      t.boolean :is_finished, :default => false
      t.date :finished_on
      t.integer :taskable_id
      t.string :taskable_type

      t.timestamps
    end
    add_index :tasks, :cycle_id
    add_index :tasks, :employee_id
  end
end
