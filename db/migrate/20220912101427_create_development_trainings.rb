class CreateDevelopmentTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :development_trainings do |t|

      t.references :development_plan
      t.references :training_item

      t.timestamps
    end
  end
end
