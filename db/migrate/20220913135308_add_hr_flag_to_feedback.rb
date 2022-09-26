class AddHrFlagToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :hr_visable, :boolean, default: false
  end
end
