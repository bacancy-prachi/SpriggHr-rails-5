class AddSourceToThreeSixtyEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :source, :string, default: 'other'
  end
end
