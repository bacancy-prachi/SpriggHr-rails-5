class CreateDevelopmentPlanApprovalVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plan_approval_versions do |t|
      t.string   :item_type, :null => false
      t.integer  :item_id,   :null => false
      t.string   :event,     :null => false
      t.string   :whodunnit
      t.text     :object
      t.datetime :created_at
    end
    add_index :development_plan_approval_versions, [:item_type, :item_id], :name => :idx_development_plan_approval_version_item_type_item_id
  end
end
