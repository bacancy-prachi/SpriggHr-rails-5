class CreateCompensationRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :compensation_ranges do |t|
      t.references :compensation_range_template
      t.decimal :lower, precision: 5, scale: 2
      t.decimal :upper, precision: 5, scale: 2
      t.decimal :adjustment, precision: 12, scale: 3
      t.string :adjustment_type
      t.timestamps
    end
    add_index :compensation_ranges, :compensation_range_template_id
  end
end
