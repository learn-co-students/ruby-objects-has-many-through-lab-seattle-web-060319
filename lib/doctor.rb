require 'pry'
# require_relative 'appointment'
# require_relative 'patient'

class Doctor

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		Appointment.new(patient, date, self)
	end

	def appointments
		Appointment.all.select { |appointment| appointment.doctor == self }
	end

	def patients
		self.appointments.collect { |appointment| appointment.patient }
	end
end

# dr_who = Doctor.new("The Doctor")
# bugs = Doctor.new("Bugs Bunny")
# patient1 = Patient.new("Donna")
# patient2 = Patient.new("Ezra")
# patient3 = Patient.new("Alfred")
# bugs.new_appointment("June 2", patient1)
# bugs.new_appointment("Sept. 15", patient1)
# bugs.new_appointment("Aug. 5", patient1)
# dr_who.new_appointment("Jan. 4", patient2)
# dr_who.new_appointment("Jan. 8", patient2)
# dr_who.new_appointment("Jan. 17", patient3)




#binding.pry
