class CreateSuccessStoryTranslations < ActiveRecord::Migration
  def self.up
    create_table :success_story_translations do |t|
      t.integer :localedb_id
      t.integer :success_story_id

      t.string :title
      t.text :short_text
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :success_story_translations
  end
end
