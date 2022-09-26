class RemoveCommentBanks < ActiveRecord::Migration[5.2]
  def change
    drop_table :comment_banks
  end
end
