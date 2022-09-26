class AddColourToRating < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :colour, :string
  end
end
