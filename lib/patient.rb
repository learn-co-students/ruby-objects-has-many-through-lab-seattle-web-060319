require 'pry'

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



def new_appointment(doctor, date)
  Appointment.new(self, date, doctor)
end

def appointments
  Appointment.all.select { |appt|
     appt.patient == self }
end

def doctors
  self.appointments.collect do |appts|
    appts.doctor
  end
end


end

# kara = Patient.new("Kara")
# binding.pry
