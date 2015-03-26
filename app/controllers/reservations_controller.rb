class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservations = Reservation.all
    @user = User.find(@reservation.user_id)
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    if @reservation.save
      flash[:notice] = "Reservation made!"
      redirect_to reservation_path({ id: @reservation.id })
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :listing_id, listing: [:date_available, :listing_id])
  end
end
