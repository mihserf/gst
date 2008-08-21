class CreateCityTranslations < ActiveRecord::Migration
  def self.up
    create_table :city_translations do |t|
      t.integer :localedb_id
      t.integer :city_id

      t.string :name
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :city_translations
  end
end
