class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  def readable_duration
    hours = duration_in_mins / 60
    minutes = duration_in_mins % 60

    "#{hours}H #{minutes}M"
  end
end
