class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
      t.text :body
      
      t.string   :ident_name
      t.integer :num_order
      
      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
