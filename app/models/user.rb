class User < ActiveRecord::Base

	attr_accessible :name, :email, :phone, :country,  :password, :password_confirmation
	validates :email, email_format: { message: "Это не похоже на email! :-)" }
	validates :name, :email,  presence: true
	validates :name, length: { minimum: 5 }
	validates :password, length: { in: 6..20 }
	#validates :avatar, :attachment_presence => true
	#has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "user.png"
  #	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_secure_password
  validates_presence_of :password, :on => :create
	# Callbacks

	after_initialize { puts "Initializa" }
	after_save { puts "save" }
	after_create { puts "create" }
end
