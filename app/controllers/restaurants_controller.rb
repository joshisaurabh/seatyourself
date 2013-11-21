class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end
  
  def new
    @restaurant = Restaurant.new
  end

  def show
  
   @restaurant = Restaurant.find(params[:id])


    if current_account
      @review = @restaurant.reviews.build
      @reservation = @restaurant.reservations.build
    end

    @schedule = Schedule.new
    @schedule.restarant_id = @restaurant.id
  

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :summary, :max_capacity, :avail_capacity, :two_seater, :four_seater, :six_seater, :eight_seater, :photo)
  end
end
