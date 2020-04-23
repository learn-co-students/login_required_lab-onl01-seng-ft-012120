class SessionsController < ApplicationController
    def new
    
    end

    def create
        if params[:name].blank? || params[:name].nil?
            redirect_to "/login"
        else
            session[:name] = params[:name]
            redirect_to "/"
        end
    end
    
    def index
    end

    def destroy
        session.clear
        redirect_to "/"
    end
end