class AddImpactedPeopleToAfIs < ActiveRecord::Migration[5.2]
  def change
    add_column :area_for_improvement_examples, :impacted_people, :boolean
    add_column :strength_examples, :impacted_people, :boolean
  end
end
