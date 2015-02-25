class Item < ActiveRecord::Base
   attr_accessible :price, :name, :description, :real
   validates :price,  numericality: { greater_than: 0, allow_nil: true } 

end
