class CreateProjectTranslations < ActiveRecord::Migration
  def self.up
    create_table :project_translations do |t|
      t.string :name
      t.text  :short_text
      t.text :description

      t.integer :localedb_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_translations
  end
end
