class CreateCharities < ActiveRecord::Migration
  def self.up
    create_table :charities do |t|
      t.integer :num
      t.string :title
      t.text :short_text
      t.text :body
      t.string :ident_name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :charities
  end
end
