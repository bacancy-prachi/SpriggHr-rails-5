class RemoveSubmission < ActiveRecord::Migration[5.2]
  def change
    drop_table :submissions
  end
end
