class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new

  end

  def create 
    session[:name] = params[:name]
    if current_user.nil? || current_user.empty?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy 
    if current_user
      session.clear
    end
  end

end
