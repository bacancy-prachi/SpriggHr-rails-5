class CreateCncAppUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :cnc_app_updates do |t|
      t.integer :version_number
      t.text :description
      t.date :revision_date

      t.timestamps
    end

    CncAppUpdate.create(version_number: 76, description: 'Fixed issue with goal Cata alignment.', revision_date: '2015-10-16'.to_date)
    CncAppUpdate.create(version_number: 77, description: 'Added multiple state selection to MyTime Holidays.', revision_date: '2016-02-28'.to_date)
    CncAppUpdate.create(version_number: 78, description: 'Added change log feature to admin panel.', revision_date: '2016-02-28'.to_date)
    CncAppUpdate.create(version_number: 79, description: 'Added Admin ability to force user activation.', revision_date: '2016-02-28'.to_date)
    CncAppUpdate.create(version_number: 80, description: 'Added Admin ability to set welcome line colour.', revision_date: '2016-02-28'.to_date)
    CncAppUpdate.create(version_number: 81, description: 'Summary reports added to 360 reviews', revision_date: '2016-03-18'.to_date)
    CncAppUpdate.create(version_number: 82, description: 'Added Admin ability to set timed reminders.', revision_date: '2016-04-06'.to_date)
    CncAppUpdate.create(version_number: 83, description: 'Added e-mail calendar integration.', revision_date: '2016-04-18'.to_date)
    CncAppUpdate.create(version_number: 84, description: 'Added Admin ability to disable weightings and competencies.', revision_date: '2016-05-13'.to_date)
    CncAppUpdate.create(version_number: 85, description: 'Notes now available to managers while completing reviews.', revision_date: '2016-05-20'.to_date)
    CncAppUpdate.create(version_number: 86, description: 'Added Check-In Meetings.', revision_date: '2016-06-17'.to_date)
    CncAppUpdate.create(version_number: 87, description: 'Added Support for Quarterly Reviews.', revision_date: '2016-07-15'.to_date)
    CncAppUpdate.create(version_number: 88, description: 'Added Feedback Distribution Lists.', revision_date: '2016-08-05'.to_date)
    CncAppUpdate.create(version_number: 89, description: 'Updated Development Plans', revision_date: '2016-09-14'.to_date)
    CncAppUpdate.create(version_number: 90, description: 'Added Goal Alignment Report', revision_date: '2016-10-02'.to_date)
    CncAppUpdate.create(version_number: 91, description: 'Added ability to integrate with Slack', revision_date: '2016-11-06'.to_date)

  end
end
