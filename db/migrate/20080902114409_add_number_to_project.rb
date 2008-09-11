class AddNumberToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :number, :integer
  end

  def self.down
    remove_column :projects, :number
  end
end
