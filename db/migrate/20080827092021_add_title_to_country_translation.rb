class AddTitleToCountryTranslation < ActiveRecord::Migration
  def self.up
    add_column :country_translations, :title, :string
  end

  def self.down
    remove_column :country_translations, :title
  end
end
