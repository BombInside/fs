class User < ActiveRecord::Base
	attr_accessible :name, :email, :phone, :country
	validates :email, email_format: { message: "Это не похоже на email! :-)" }
	validates :name, length: { minimum: 2 }
	validates :password, length: { in: 6..20 }
end
