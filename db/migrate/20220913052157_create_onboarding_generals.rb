class CreateOnboardingGenerals < ActiveRecord::Migration[5.2]
  def change
    create_table :onboarding_generals do |t|
      t.references :employee
      t.references :buddy, class_name: "Employee"
      t.text :randr_note

      t.timestamps
    end
    add_index :onboarding_generals, :employee_id
    add_index :onboarding_generals, :buddy_id
  end
end
