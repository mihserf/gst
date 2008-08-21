class CreateMemberTranslations < ActiveRecord::Migration
  def self.up
    create_table :member_translations do |t|
      t.integer :localedb_id
      t.integer :member_id
      
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :member_translations
  end
end
