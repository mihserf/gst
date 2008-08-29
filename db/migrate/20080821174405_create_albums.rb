class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :ident_name
      t.string :title
      t.text :description
      t.main  :boolean

      t.timestamps
    end
  end

  def self.down
    drop_table :albums
  end
end
