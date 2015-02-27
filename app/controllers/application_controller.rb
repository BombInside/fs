class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception

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


 
end
