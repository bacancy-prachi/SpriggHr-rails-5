class AddListPositionToCompetencies < ActiveRecord::Migration[5.2]
  def change
    add_column :competencies, :list_position, :integer
  end
end
