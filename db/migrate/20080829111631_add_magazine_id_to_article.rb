class AddMagazineIdToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :magazine_id, :integer
  end

  def self.down
    remove_column :articles, :magazine_id
  end
end
