class CreateTeamFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.references :employee
      t.references :submission
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
