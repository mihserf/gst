class CreateSuccessStories < ActiveRecord::Migration
  def self.up
    create_table :success_stories do |t|
      t.string :title
      t.text :short_text
      t.text :body
      t.integer :member_id
      t.string :ident_name

      t.timestamps
    end
  end

  def self.down
    drop_table :success_stories
  end
end
