class AddFilesToNotes < ActiveRecord::Migration[5.2]
  def change
    add_attachment :notes, :upload
  end
end
