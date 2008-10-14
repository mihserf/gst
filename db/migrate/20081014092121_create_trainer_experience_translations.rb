class CreateTrainerExperienceTranslations < ActiveRecord::Migration
  def self.up
    create_table :trainer_experience_translations do |t|
      t.integer :localedb_id
      t.integer :trainer_experience_id
      t.string :title
      t.text :short_text
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :trainer_experience_translations
  end
end
