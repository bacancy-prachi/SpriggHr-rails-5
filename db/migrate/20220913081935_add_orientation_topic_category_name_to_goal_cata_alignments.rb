class AddOrientationTopicCategoryNameToGoalCataAlignments < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_cata_alignmnets, :orientation_topic_category_name, :string
  end
end
