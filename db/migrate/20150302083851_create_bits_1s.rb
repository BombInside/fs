class CreateBits1s < ActiveRecord::Migration
  def change
    create_table :bits_1s do |t|
      t.integer :user_id
      t.string :bit_cost
      t.text :comment

      t.timestamps
    end
  end
end
