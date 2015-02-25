class ItemsController < ApplicationController
	def index
		@items = Item.all		
	end

	def show
		
	end

	def new
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	def create
		@item = Item.create(name: params[:name], description: params[:description], price: params[:price], weigth: params[:weigth], delivery_date: params[:delivery_date], real: params[:real])
			
	end
end
