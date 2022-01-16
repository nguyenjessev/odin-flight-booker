class Booking < ApplicationRecord
  belongs_to :flight
  has_many :tickets, dependent: :delete_all
  has_many :passengers, through: :tickets

  accepts_nested_attributes_for :passengers
end
