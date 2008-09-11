class CreateMemberEventDates < ActiveRecord::Migration
  def self.up
    create_table :member_event_dates do |t|
      t.integer :member_event_id
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :member_event_dates
  end
end
