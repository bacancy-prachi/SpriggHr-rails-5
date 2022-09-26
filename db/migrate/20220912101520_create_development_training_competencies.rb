class CreateDevelopmentTrainingCompetencies < ActiveRecord::Migration[5.2]
  def change
    create_table :development_training_competencies do |t|
      t.references :competency
      t.references :development_training

      t.timestamps
    end
    add_index :development_training_competencies, :competency_id, name: 'dev_trn_comps_comp_index'
    add_index :development_training_competencies, :development_training_id, name: 'dev_trn_comps_dev_index'
  end
end
