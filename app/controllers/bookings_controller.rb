class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:id])
      @flight = Flight.find(params[:id])
    else
      redirect_to root_path, alert: 'Flight not found.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :passengers)
  end
end
