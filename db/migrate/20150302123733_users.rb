class Users < ActiveRecord::Migration
def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :email
      t.string :phone
      t.string :country
      t.string :town
      t.string :state
      t.boolean :deleted
      t.timestamps
    end
    add_index :users, :name
    add_index :users, :surname
    add_index :users, :email
    add_index :users, :phone
    add_index :users, :country
    add_index :users, :town
  end
end
