class AddCompetencyGroupIdToCompetencies < ActiveRecord::Migration[5.2]
  def change
    add_column :competencies, :competency_group_id, :integer, null: true
    add_index :competencies, :competency_group_id
  end
end
