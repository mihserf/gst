class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :status
      t.integer :city_id, :number

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
