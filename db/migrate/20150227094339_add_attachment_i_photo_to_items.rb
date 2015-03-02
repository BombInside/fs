class AddAttachmentIPhotoToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :i_photo
    end
  end

  def self.down
    remove_attachment :items, :i_photo
  end
end
