class FlightsController < ApplicationController
  def index
    @date_options = Flight.select(:start).distinct
  end
end
