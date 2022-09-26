class AddLocaleColumnsToVersionTables < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_versions, :locale, :string
    add_column :checkin_meeting_question_versions, :locale, :string
    add_column :competency_statement_versions, :locale, :string
    add_column :competency_versions, :locale, :string
    add_column :development_plan_approval_versions, :locale, :string
    add_column :employee_versions, :locale, :string
    add_column :goal_approval_versions, :locale, :string
    add_column :goal_versions, :locale, :string
    add_column :group_objective_versions, :locale, :string
    add_column :objectives_corp_versions, :locale, :string
    add_column :team_goal_versions, :locale, :string
  end
end
