class AddAttachmentImageToOthers < ActiveRecord::Migration
  def self.up
    change_table :others do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :others, :image
  end
end
