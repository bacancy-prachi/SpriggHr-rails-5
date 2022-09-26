class CreateDevelopmentActivityCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :development_activity_competencies do |t|
      t.references :competency
      t.references :development_activity

      t.timestamps
    end
    add_index(:development_activity_competencies, [:competency_id], name: 'dev_act_comps_comp_index')
    add_index(:development_activity_competencies, [:development_activity_id], name: 'dev_act_comps_act_index')
  end
end
