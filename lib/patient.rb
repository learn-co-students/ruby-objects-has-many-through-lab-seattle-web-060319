 class Patient

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date_str)
		Appointment.new(self, date_str, doctor)
	end

	def appointments
		Appointment.all.select {|appt| appt.patient == self}
	end

	def doctors
		appointments.map {|appt| appt.doctor}
	end

end