class CreateOpinions < ActiveRecord::Migration
  def self.up
    create_table :opinions do |t|
      t.string :author
      t.string :status
      t.text :body

      t.integer :member_id
      
      t.string :ident_name

      t.timestamps
    end
  end

  def self.down
    drop_table :opinions
  end
end
