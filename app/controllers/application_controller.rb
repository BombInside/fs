class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception

   helper_method :current_user
   
   def host
   	@host = request.host_with_port
   end

  private
  def render_403
  	render template: "error/403", status: 403
  end

  def render_404
  	render template: "error/404", status: 404
  end

  def current_user
    User.find_by id: session[:user_id] if session[:user_id]

  end



end
