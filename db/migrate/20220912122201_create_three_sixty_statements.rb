class CreateThreeSixtyStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :three_sixty_statements do |t|
      t.references :competency_statement
      t.references :three_sixty_review
    end
  end
end
