class AddAgendaMeetingRecordTemplateHelperModels < ActiveRecord::Migration[5.2]
  def change
    create_table :template_orders do |t|
      t.references :agenda_meeting_record_template
      t.text :content

      t.timestamps
    end

    create_table :template_disc_points do |t|
      t.references :agenda_meeting_record_template
      t.text :content

      t.timestamps
    end

    create_table :template_open_issues do |t|
      t.references :agenda_meeting_record_template
      t.text :content

      t.timestamps
    end

    create_table :template_new_items do |t|
      t.references :agenda_meeting_record_template
      t.text :content

      t.timestamps
    end

    add_index :template_new_items, :agenda_meeting_record_template_id
    add_index :template_open_issues, :agenda_meeting_record_template_id
    add_index :template_disc_points, :agenda_meeting_record_template_id
    add_index :template_orders, :agenda_meeting_record_template_id
  end
end
