class AddCompletedToThreeSixtyEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :completed, :boolean
    add_column :three_sixty_employees, :completed_at, :date
  end
end
