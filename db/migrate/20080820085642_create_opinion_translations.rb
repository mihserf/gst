class CreateOpinionTranslations < ActiveRecord::Migration
  def self.up
    create_table :opinion_translations do |t|
      t.integer :localedb_id
      t.integer :opinion_id

      t.string :author
      t.string :status
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :opinion_translations
  end
end
