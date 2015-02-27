class Item < ActiveRecord::Base

   attr_accessible :price, :name, :description, :real, :short_desc, :weigth, :i_photo
   validates :price,  numericality: { greater_than: 0, allow_nil: true } 
   validates :description, :name, :short_desc, presence: true
   validates :i_photo, :attachment_presence => true

   has_attached_file :i_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "next-aired-missing.png"
   validates_attachment_content_type :i_photo, :content_type => /\Aimage\/.*\Z/
   #Асоциации
   
   #belongs_to 

   #Callbacks

   after_initialize { puts "Initializa" }
   after_save { puts "save" }
   after_create { puts "create" }

end
