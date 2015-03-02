class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avatar
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :email
      t.string :phone
      t.string :country
      t.string :town
      t.string :state
      t.boolean :deleted
      t.boolean :admin
      t.string :password
      t.string :login
      t.timestamps
    end
    add_index :users, :name
    add_index :users, :surname
    add_index :users, :email
    add_index :users, :phone
    add_index :users, :country
    add_index :users, :town
  end

  def self.down
    remove_attachment :users, :avatar
  end
end
