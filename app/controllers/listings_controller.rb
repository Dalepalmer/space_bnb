class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listings = Listing.all
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      flash[:notice] = "Listing added successfully!"
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end


  def new
    @listing = Listing.new
  end

private
  def listing_params
    params.require(:listing).permit(:title, :description, :user_id, :price, :date_available, :location)
  end
end
