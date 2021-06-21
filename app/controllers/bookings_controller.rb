class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:id])
      @flight = Flight.find(params[:id])
      @booking = Booking.new
      params[:passengers].to_i.times { @booking.passengers.build }
    else
      redirect_to root_path, alert: 'Flight not found.'
    end
  end

  def create
    @booking = Booking.new

    @booking.flight_id = booking_params[:flight_id]
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :passengers, :flight_id, passengers_attributes: %i[id name email])
  end
end
