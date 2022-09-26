class CreatePerformanceReviewTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_review_templates do |t|
      t.references :organization, null: false
      t.string :name, null: false
      t.boolean :goals_enabled, null: false, default: true
      t.boolean :competencies_enabled, null: false, default: true
      t.boolean :values_enabled, null: false, default: false
      t.references :rating_set, null: false
      t.timestamps
    end
    add_index :performance_review_templates, :organization_id
    add_index :performance_review_templates, :rating_set_id

    Organization.all.each do |org|
      rating_set = org.rating_sets.first
      goals = org.settings(:goals).enabled.to_boolean
      comps = org.settings(:competencies).enabled.to_boolean
      values = org.settings(:core_values).enabled.to_boolean
      template = org.performance_review_templates.create(name: 'Default',
                                                         goals_enabled: goals,
                                                         competencies_enabled: comps,
                                                         values_enabled: values,
                                                         rating_set_id: rating_set.id)
    end
  end
end
