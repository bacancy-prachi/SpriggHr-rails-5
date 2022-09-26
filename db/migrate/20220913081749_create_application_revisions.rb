class CreateApplicationRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :application_revisions do |t|
      t.string :version
      t.string :log
      t.string :date

      t.timestamps
    end
  end
end
