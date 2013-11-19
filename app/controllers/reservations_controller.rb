class ReservationsController < ApplicationController
  def show
  end

  def new
  end

  def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.account_id = current_account.id
    if @reservation.save
      redirect_to restaurant_path(@restaurant), notice: "Your reservation has been added"
    else
      render :action => :show
    end
  end
  

  def edit
  end

private
  def reservation_params
    params.require(:reservation).permit(:reserve_date, :start_time, :end_time, :party_count, :status, :account_id, :restaurant_id)
  end

end
