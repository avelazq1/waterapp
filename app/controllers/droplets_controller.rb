class DropletsController < ApplicationController
 def index
 @droplet = Droplet.all
end

 def show
  @droplet = Droplet.find(params[:id])
 end 

 def new
 end

  def create
   @droplet = Droplet.new(params[:article])
  
   @droplet.save
   redirect_to @droplet
  end
  
 private
  def droplet_params
    params.require(:droplet).permit(:title, :text)
 end
end
