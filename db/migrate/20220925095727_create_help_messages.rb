class CreateHelpMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :help_messages do |t|
      t.text :message
      t.timestamps
    end
  end
end
