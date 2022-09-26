class CreateCommentBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_banks do |t|
      t.string :comment
      t.string :bank_type

      t.timestamps
    end
  end
end
