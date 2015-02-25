class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :price
      t.string :name
      t.text :description
      t.string :comppany_name
      t.boolean :real
      t.boolean :show_price
      t.float :weigth
      t.date :delivery_date
      t.datetime :torg_start
      t.datetime :torg_end
      t.timestamps
    end
    add_index :items, :price
    add_index :items, :name
    add_index :items, :torg_start
    add_index :items, :torg_end
    add_index :items, :weigth
    add_index :items, :delivery_date
  end
end
