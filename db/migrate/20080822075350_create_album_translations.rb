class CreateAlbumTranslations < ActiveRecord::Migration
  def self.up
    create_table :album_translations do |t|
      t.string :title
      t.text :description

      t.integer :localedb_id
      t.integer :album_id

      t.timestamps
    end
  end

  def self.down
    drop_table :album_translations
  end
end
