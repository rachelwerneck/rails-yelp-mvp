class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save # Will raise ActiveModel::ForbiddenAttributesError
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
end
