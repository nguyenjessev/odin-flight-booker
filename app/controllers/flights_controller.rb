class FlightsController < ApplicationController
  def index
    return unless %i[origin_id destination_id passengers departing].all? { |k| params.key?(k) }

    @flights = Flight.where('from_airport_id = :origin_id
                            AND to_airport_id = :destination_id
                            AND start::date = :departing',
                            search_params.to_h)

    @booking = Booking.new
  end

  private

  def search_params
    params.permit(:origin_id, :destination_id, :passengers, :departing)
  end
end
