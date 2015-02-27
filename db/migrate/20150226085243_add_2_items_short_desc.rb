class Add2ItemsShortDesc < ActiveRecord::Migration
  def change
    add_column :items, :short_desc, :text
    add_column :users, :is_admin, :boolean
    add_column :users, :user_pic, :string
  end
end
