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
    @booking = Booking.new(booking_params)

    @booking.flight_id = booking_params[:flight_id]

    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger).confirmation_email.deliver_later
      end

      redirect_to root_path, notice: 'Booking created!'
    else
      render action: new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :passengers, :flight_id, passengers_attributes: %i[id name email])
  end
end
