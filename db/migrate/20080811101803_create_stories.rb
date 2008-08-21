class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.integer :member_id
      t.string :ident_name
      t.string :title
      t.text :short_text
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
