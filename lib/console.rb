require_relative 'artist'
require_relative 'genre'
require_relative 'song'
require_relative 'patient'
require_relative 'doctor'
require_relative 'appointment'
require 'pry'

jay_z = Artist.new("Jay-Z")
kendrick = Artist.new("Kendrick Lamar")

rap = Genre.new("rap")

ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

doctor_who = Doctor.new('The Doctor')
hevydevy = Patient.new('Devin Townsend')

binding.pry