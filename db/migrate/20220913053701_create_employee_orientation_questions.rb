class CreateEmployeeOrientationQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_orientation_questions do |t|
      t.timestamps null: false
      t.integer :orientation_question_id
      t.integer :employee_id
      t.text :answer
    end
  end
end
