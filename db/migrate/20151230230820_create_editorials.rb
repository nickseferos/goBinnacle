class CreateEditorials < ActiveRecord::Migration
  def self.up
    create_table :editorials do |t|
      t.string :title
      t.string :author
      t.date :date
      t.text :body
      t.string :image
      
      t.timestamps
    end
  end

  def self.down
    drop_table :editorials
  end
end