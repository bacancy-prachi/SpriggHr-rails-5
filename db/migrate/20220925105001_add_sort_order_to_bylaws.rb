class AddSortOrderToBylaws < ActiveRecord::Migration[5.2]
  def change
    add_column :bylaws, :sort_order, :integer, null: false, default: 0

    Organization.all.each do |org|
      org.bylaws.where(year: 2016).each_with_index do |bylaw, idx|
        bylaw.update_attributes(sort_order: idx+1)
      end
      org.bylaws.where(year: 2017).each_with_index do |bylaw, idx|
        bylaw.update_attributes(sort_order: idx+1)
      end
      org.bylaws.where(year: 2018).each_with_index do |bylaw, idx|
        bylaw.update_attributes(sort_order: idx+1)
      end
    end
  end
end
