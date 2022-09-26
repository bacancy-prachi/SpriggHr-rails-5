class AddSelfEvalNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :self_eval_name, :string, default: 'Self Evaluation'
  end
end
