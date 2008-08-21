class AddIdentnameToStatus < ActiveRecord::Migration
  def self.up
    add_column :statuses, :ident_name, :string
  end

  def self.down
    remove_column :statuses, :ident_name
  end
end
