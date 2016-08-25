class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login_form
    render 'shared/login'
  end

  def login
    session[:current_user] = params[:username]
    redirect_to rooms_path
  end

  def check_user
    redirect_to login_path if current_user.nil?
  end

  def current_user
    session[:current_user]
  end

end
