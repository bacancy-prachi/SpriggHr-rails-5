class ChangeThreeSixtyRatingEmployeeAssociation < ActiveRecord::Migration[5.2]
  def change
    remove_column :three_sixty_ratings, :employee_id
    add_column :three_sixty_ratings, :three_sixty_employee_id, :integer
  end
end
