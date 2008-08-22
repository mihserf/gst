class CreateAlbumPhotoTranslations < ActiveRecord::Migration
  def self.up
    create_table :album_photo_translations do |t|
      t.string :description

      t.integer :localedb_id
      t.integer :album_photo_id
      t.timestamps
    end
  end

  def self.down
    drop_table :album_photo_translations
  end
end
