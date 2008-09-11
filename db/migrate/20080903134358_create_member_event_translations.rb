class CreateMemberEventTranslations < ActiveRecord::Migration
  def self.up
    create_table :member_event_translations do |t|
      t.integer :localedb_id
      t.integer :member_event_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :member_event_translations
  end
end
