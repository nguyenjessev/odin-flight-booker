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
Flight.create(from_airport_id: Airport.first.id, to_airport_id: Airport.second.id, start: '2021-12-12 08:30:00.000', duration_in_mins: 150)
Flight.create(from_airport_id: Airport.first.id, to_airport_id: Airport.third.id, start: '2021-12-10 07:30:00.000', duration_in_mins: 180)
Flight.create(from_airport_id: Airport.second.id, to_airport_id: Airport.fourth.id, start: '2021-12-10 07:30:00.000', duration_in_mins: 140)
Flight.create(from_airport_id: Airport.fifth.id, to_airport_id: Airport.first.id, start: '2021-10-10 15:30:00.000', duration_in_mins: 250)
Flight.create(from_airport_id: Airport.fifth.id, to_airport_id: Airport.fourth.id, start: '2021-08-10 19:30:00.000', duration_in_mins: 235)
