class AddMainToMember < ActiveRecord::Migration
  def self.up
    add_column :members, :main, :boolean
  end

  def self.down
    remove_column :members, :main
  end
end
