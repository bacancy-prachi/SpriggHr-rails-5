class AddApprovedToAgendas < ActiveRecord::Migration[5.2]
  def change
    add_column :agendas, :approved, :boolean
  end
end
