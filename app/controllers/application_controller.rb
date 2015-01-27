class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def mark_return_point
    session[:return_to] = params[:return_to] || request.env["HTTP_REFERER"]
  end
  
  def return_url
    session[:return_to]
  end
  helper_method :return_url

  def return_to_last_point(response_status = {})
    response_status = {:flash => response_status} unless response_status[:flash]
    redirect_to(session[:return_to], response_status)
  end
    
end
