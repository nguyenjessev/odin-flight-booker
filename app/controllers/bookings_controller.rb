class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :passengers)
  end
end
