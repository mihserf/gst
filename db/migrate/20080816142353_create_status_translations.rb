class CreateStatusTranslations < ActiveRecord::Migration
  def self.up
    create_table :status_translations do |t|
      t.integer :localedb_id
      t.integer :status_id
      t.string :name
      t.string :status_name

      t.timestamps
    end
  end

  def self.down
    drop_table :status_translations
  end
end
