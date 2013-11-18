class ReviewsController < ApplicationController
  before_filter :load_restaurant
  before_filter :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]

  def show
  	@review +Review.find(params[:id])
  end

  def create
  	@review = @restaurant.reviews.build(review_params)
  	@review.account_id = current_account.id
  	if @review.save
  		redirect_to restaurants_path, notice: "Your review has been added"
  	else
  		render :action => :show
  	end
  end

  def destroy
  	@review = REview.find(params[:id])
  	@review.destroy
  end

  private
  def review_params
  	params.require(:review).permit(:review, :restaurant_id)
  end

  def load_restaurant
  	@restaurant = Restaurant.finf(params[:restaurant_id])
  end
end
