class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.text :description
      t.string :link
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end