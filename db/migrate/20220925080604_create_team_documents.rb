class CreateTeamDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :team_documents do |t|
      t.references :organization
      t.references :group
      t.references :employee
      t.string :name
      t.has_attached_file :document
      t.timestamps
    end
    add_index :team_documents, :organization_id
    add_index :team_documents, :group_id
    add_index :team_documents, :employee_id
  end
end
