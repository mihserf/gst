class CreateJimArticles < ActiveRecord::Migration
  def self.up
    create_table :jim_articles do |t|
      t.integer :num
      t.string :title
      t.text :short_text
      t.text :body
      t.string :lang
      t.string :ident_name
      t.integer :ident_num

      t.timestamps
    end
  end

  def self.down
    drop_table :jim_articles
  end
end