class CreateJimArticleTranslations < ActiveRecord::Migration
  def self.up
    create_table :jim_article_translations do |t|
      t.integer :localedb_id
      t.integer :jim_article_id

      t.string :title
      t.text :short_text
      t.text :body
      
      t.timestamps
    end
  end

  def self.down
    drop_table :jim_article_translations
  end
end
