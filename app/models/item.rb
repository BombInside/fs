class Item < ActiveRecord::Base
   attr_accessible :price, :name, :description, :real
   validate :price, { numericality: { greater_than: 0 } }

end
