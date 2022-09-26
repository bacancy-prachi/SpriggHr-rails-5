class FixAreaForImprovementExamplesForeignKey < ActiveRecord::Migration[5.2]
  def change
    remove_column :area_for_improvement_examples, :strength_id
    add_column :area_for_improvement_examples, :area_for_improvement_id, :integer
  end
end
