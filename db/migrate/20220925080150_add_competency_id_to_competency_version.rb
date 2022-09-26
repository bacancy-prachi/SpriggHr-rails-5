class AddCompetencyIdToCompetencyVersion < ActiveRecord::Migration[5.2]
  def change
    add_column :competency_versions, :competency_id, :integer
  end
end
