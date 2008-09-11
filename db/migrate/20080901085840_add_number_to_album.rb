class AddNumberToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :number, :integer
  end

  def self.down
    remove_column :albums, :number
  end
end
