require 'pry'

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
  Appointment.all.select {|appt| appt.doctor == self}
end

def patients
  self.appointments.collect { |appt| appt.patient }
end


# def new_appointment(date, patient)
#   patient = Patient.new(name)
#   Appointment.new(date, patient, self)
#
# end



#def appointments
#  Appointment.all.collect do |appts|
#     appts.doctor == self
#   end
# end
#
# def patients
#   appointments.collect do |appts_with_self|
#     appts_with_self.patient
#   end
# end
#
end
#
