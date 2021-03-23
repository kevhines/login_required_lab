class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
   # binding.pry
  !!session[:name] ? session[:name] : nil
  end

def hello
  redirect_to controller: 'sessions', action: 'new' if !current_user
end

end
