class CreateCharityTranslations < ActiveRecord::Migration
  def self.up
    create_table :charity_translations do |t|
      t.integer :localedb_id
      t.integer :charity_id

      t.string :title
      t.text :short_text
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :charity_translations
  end
end
