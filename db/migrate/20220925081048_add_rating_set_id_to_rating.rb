class AddRatingSetIdToRating < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :rating_set_id, :integer, null: true
    add_index :ratings, :rating_set_id

    Organization.all.each do |org|
      rating_set = org.rating_sets.first
      if rating_set.nil?
        rating_set = org.rating_sets.create(name: 'Default')
        org.ratings.each do |rating|
          rating.update_attribute(:rating_set_id, rating_set.id)
        end
      end
    end
  end
end
