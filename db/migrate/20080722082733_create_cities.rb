class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.text :body
      t.string :ident_name
      t.integer :country_id, :num_order
      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
