class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @listing = Listing.find(params[:id])
    @reservation = Reservation.new
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    if @reservation.save
      flash[:notice] = "Reservation made!"
      redirect_to new_reservation_path(@reservation)
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :listing_id, listing: [:date_available])
  end
end
