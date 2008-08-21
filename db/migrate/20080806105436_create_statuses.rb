class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :name
      t.string :status_name
      t.integer :number
                  
      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
