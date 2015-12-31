class AddAttachmentImageToSatires < ActiveRecord::Migration
  def self.up
    change_table :satires do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :satires, :image
  end
end
