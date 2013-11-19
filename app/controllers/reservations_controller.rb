class ReservationsController < ApplicationController
  def show
  end

  def new
  end

  def create
  @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.account_id = current_account.id
    if @reservation.save
      redirect_to restaurants_path, notice: "Your reservation has been added"
    else
      render :action => :show
    end
  end
  end

  def edit
  end
end
