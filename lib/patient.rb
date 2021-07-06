require 'pry'
# require_relative 'doctor'
# require_relative 'appointment'


class Patient

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(date, doctor)
		Appointment.new(self, date, doctor)
	end

	def appointments
		Appointment.all.select { |appointment| appointment.patient == self }
	end

	def doctors
		Appointment.all.collect { |appointment| appointment.date}
	end
	
end







#binding.pry

