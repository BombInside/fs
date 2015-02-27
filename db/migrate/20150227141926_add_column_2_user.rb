class AddColumn2User < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
  end
end
