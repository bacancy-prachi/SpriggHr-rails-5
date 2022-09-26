class AddNameDescriptionToEvaluationCoreValues < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_core_values, :name, :string, null: true
    add_column :evaluation_core_values, :description, :text, null: true

    EvaluationCoreValue.all.each do |ecv|
      unless ecv.core_value.nil?
        ecv.update_attributes(name: ecv.core_value.name, description: ecv.core_value.description)
      end
    end
  end
end
