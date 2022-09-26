class CreateOrientationFirstWeekQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_first_week_questions do |t|
      t.string :question
      t.boolean :complete
      t.references :orientation_first_week

      t.timestamps
    end
    add_index :orientation_first_week_questions, :orientation_first_week_id, name: 'index'
  end
end
