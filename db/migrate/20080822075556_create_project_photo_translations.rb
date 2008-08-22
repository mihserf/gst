class CreateProjectPhotoTranslations < ActiveRecord::Migration
  def self.up
    create_table :project_photo_translations do |t|
      t.string :description

      t.integer :localedb_id
      t.integer :project_photo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_photo_translations
  end
end
