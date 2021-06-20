# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all
Airport.create(code: 'ATL')
Airport.create(code: 'DFW')
Airport.create(code: 'DEN')
Airport.create(code: 'ORD')
Airport.create(code: 'LAX')

Flight.destroy_all
Airport.pluck(:id).combination(2).each do |c|
  rand(4..10).times do
    Flight.create(from_airport_id: c[0], to_airport_id: c[1], start: rand(2.weeks).seconds.from_now, duration_in_mins: rand(100..500))
  end
end
