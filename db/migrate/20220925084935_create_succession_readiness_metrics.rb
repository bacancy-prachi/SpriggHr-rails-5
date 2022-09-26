class CreateSuccessionReadinessMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :succession_readiness_metrics do |t|
      t.references :organization, null: false
      t.string :rank, null: true
      t.text :description, null: true
      t.timestamps
    end
    add_index :succession_readiness_metrics, :organization_id
  end
end
