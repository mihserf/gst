class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :ident_name
      t.string :name
      t.text  :short_text
      t.text :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
