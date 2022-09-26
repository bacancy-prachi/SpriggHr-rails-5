class RemoveAfIandStrengthExamples < ActiveRecord::Migration[5.2]
  def change
    drop_table :strength_examples
    drop_table :area_for_improvement_examples
  end
end
