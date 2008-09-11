class CreateMemberEvents < ActiveRecord::Migration
  def self.up
    create_table :member_events do |t|
      t.integer :member_id
      t.string :name
      t.text :description
      t.string :ident_name
      t.timestamps
    end
  end

  def self.down
    drop_table :member_events
  end
end
