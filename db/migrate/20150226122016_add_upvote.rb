class AddUpvote < ActiveRecord::Migration
  def change
    add_column :items, :votes_count, :integer, default: 0
    add_column :items, :bit_count, :integer, default: 0
  end
end
