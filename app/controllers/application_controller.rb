class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # 
  
  def render_403
  	render template: "error/403", status: 403
  end

  def render_404
  	render template: "error/404", status: 404
  end


  protect_from_forgery with: :exception
end
