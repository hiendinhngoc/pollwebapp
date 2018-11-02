class ApplicationController < ActionController::Base
# encoding: utf-8
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find_by(id: cookies[:user_id]) if cookies[:user_id]
  end

  p "hello"

  helper_method :current_user
end
