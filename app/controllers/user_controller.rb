class UserController < ApplicationController
  def new
    @i = User.new
  end
  def edit
    #edit user
  end
  def create
    #POST create user
  end
  def update
    #POST update user
  end
  def show
    #GET show user

  end
  def destroy
    #destroy user

  end
  def index
    render text: "Users Index"
  end

end
