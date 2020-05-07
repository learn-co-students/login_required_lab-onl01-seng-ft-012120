class SecretsController < ApplicationController
  before_action :require_login
 
  def show
    render :show
  end
 
  def index
  end
 
  def create
    @document = Document.create(author_id: user_id)
  end
 
  private
 
  def require_login
    redirect_to '/' unless session.include? :name
  end
end
