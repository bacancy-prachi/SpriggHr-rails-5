class AddEndDateToAgendas < ActiveRecord::Migration[5.2]
  def change
    add_column :agendas, :end_date, :datetime
  end
end
