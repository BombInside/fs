class ItemsController < ApplicationController
	before_filter :find_item, only: [:show, :edit, :update, :destroy, :upvote]
	before_filter :is_admin, only: [:edit, :update, :create, :destroy, :new]

	def upvote
		@i.increment!(:votes_count)	
		redirect_to action: "index"
	end

	def expensive
		@items = Item.where("price > 1000")
		render "index"
		
	end

	def index
		@items = Item.all		
	end

	def show
	 		@i
	end

	def new
		@i = Item.new
	end

	def edit
		
	end

	def update

		@i.update_attributes(params[:item])
		if @i.errors.empty?
			redirect_to items_path
		else
			render "edit"
				
			end	
	end

	def destroy
		@i.destroy
		redirect_to items_path	
	end

	def create
		@i = Item.create(params[:item])
		if 	@i.errors.empty?
			redirect_to	items_path()	
		else
			render "new"
			end			
	end

	private
		def find_item
			@i = Item.where(params[:id]).first
			render_404 unless @i
		end

		def is_admin
			render_403 unless params[:admin] #current_user.admin == true
		end
end
