class AddTitleToCountry < ActiveRecord::Migration
  def self.up
    add_column :countries, :title, :string
  end

  def self.down
    remove_column :countries, :title
  end
end
