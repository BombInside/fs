class UsersController < ApplicationController


  def new
    @i = User.new
  end
  def edit
    #edit user
  end
  def create
    #POST create user
    @i = User.new( user_params  )
    if  @i.save
      redirect_to users_path()
    else
      render "new"
      end
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
    @items = User.all
  end
  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :phone, :country)

  end

end
