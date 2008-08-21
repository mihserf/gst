class CreateEventTranslations < ActiveRecord::Migration
  def self.up
    create_table :event_translations do |t|
      t.integer :localedb_id
      t.integer :event_id

      t.string :title
      t.text :short_text
      t.text :body
      
      t.timestamps
    end
  end

  def self.down
    drop_table :event_translations
  end
end
