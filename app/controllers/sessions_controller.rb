class SessionsController < ApplicationController 
    def new 

    end

    def create 
        if params[:name].empty?
            redirect_to login_path
        else 
            session[:name] = params[:name]
            redirect_to home_path
        end
        
    end

    def destroy 
        if current_user
            session[:name] = nil
        end
        redirect_to login_path
    end
end