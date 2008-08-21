class CreateStoryTranslations < ActiveRecord::Migration
  def self.up
    create_table :story_translations do |t|
      t.integer :localedb_id
      t.integer :story_id

      t.string :title
      t.text :short_text
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :story_translations
  end
end
