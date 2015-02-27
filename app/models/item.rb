class Item < ActiveRecord::Base

   attr_accessible :price, :name, :description, :real, :short_desc, :weigth
   validates :price,  numericality: { greater_than: 0, allow_nil: true } 
   validates :description, :name, :short_desc, presence: true

   #Асоциации
   
   #belongs_to 

   #Callbacks

   after_initialize { puts "Initializa" }
   after_save { puts "save" }
   after_create { puts "create" }

end
