class CreateCycles < ActiveRecord::Migration[5.2]
  def change
    create_table :cycles do |t|
      t.date :started_at
      t.integer :year
      t.references :employee

      t.timestamps
    end
    add_index :cycles, :employee_id
  end
end
