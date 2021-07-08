class Appointment

	@@all = []

	attr_accessor :date_str, :patient, :doctor

	def initialize(patient, date_str, doctor)
		@date_str = date_str
		@patient = patient
		@doctor	= doctor
		@@all << self
	end

	def self.all
		@@all
	end

end