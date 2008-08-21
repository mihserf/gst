class CreateCityPhotoTranslations < ActiveRecord::Migration
  def self.up
    create_table :city_photo_translations do |t|
      t.integer :localedb_id
      t.integer :city_photo_id
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :city_photo_translations
  end
end
