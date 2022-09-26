class AddTypeToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :rating_type, :string, null: false

    Rating.all.each do |rating|
      rating.update_attribute(:rating_type, 'evaluation')
    end
  end
end
