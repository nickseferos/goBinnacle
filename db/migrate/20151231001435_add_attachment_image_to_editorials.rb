class AddAttachmentImageToEditorials < ActiveRecord::Migration
  def self.up
    change_table :editorials do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :editorials, :image
  end
end
