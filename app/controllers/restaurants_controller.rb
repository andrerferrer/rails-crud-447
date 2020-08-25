class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # INDEX is to READ many
  def index
    # get all of the restaurants
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(#ID)
    # set_restaurant  
  end

  def new
    # We have here an empty restaurant to create the form
    @restaurant = Restaurant.new
  end

  def create
    # strong_params = params.require(:name_of_model).permit(:attributes)
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      # Redirect to the show page
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def edit
    # set_restaurant  
  end

  def update
    # set_restaurant
    if @restaurant.update(strong_params)
      redirect_to restaurant_path(@restaurant.id)
    else
      render :edit
    end

  end

  def destroy
    # set_restaurant    
    @restaurant.destroy

    redirect_to restaurants_path
  end
  
  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def strong_params
    return params.require(:restaurant).permit(:address, :name, :rating)
  end
end
