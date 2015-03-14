class DropletsController < ApplicationController
  def new
end

  def create
  render plain: params[:droplets].inspect
  end
end
