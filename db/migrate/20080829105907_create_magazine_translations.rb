class CreateMagazineTranslations < ActiveRecord::Migration
  def self.up
    create_table :magazine_translations do |t|
      t.string :name
      t.text :description
      t.text :coord

      t.integer :localedb_id
      t.integer :magazine_id

      t.timestamps
    end
  end

  def self.down
    drop_table :magazine_translations
  end
end
