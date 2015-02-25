class User < ActiveRecord::Base
	attr_accessible :name, :email, :phone, :country
	validate :email, email_format: { message: "Это не похоже на email! :-)" }
end
