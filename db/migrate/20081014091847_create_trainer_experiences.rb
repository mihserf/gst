class CreateTrainerExperiences < ActiveRecord::Migration
  def self.up
    create_table :trainer_experiences do |t|
      t.string :title
      t.text :short_text
      t.text :body
      t.integer :member_id
      t.string :ident_name

      t.timestamps
    end
  end

  def self.down
    drop_table :trainer_experiences
  end
end
