class CreateAreaForImprovementsIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :area_for_improvements_incidents, id: false do |t|
      t.references :area_for_improvement
      t.references :incident
      t.timestamps
    end
  end
end
