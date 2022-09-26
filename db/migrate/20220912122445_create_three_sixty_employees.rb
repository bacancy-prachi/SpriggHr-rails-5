class CreateThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :three_sixty_employees do |t|
      t.references :three_sixty_review
      t.references :employee
      t.string :role, default: "participant"

      t.timestamps
    end
    add_index :three_sixty_employees, :three_sixty_review_id
    add_index :three_sixty_employees, :employee_id
  end
end
