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
    Appointment.new(doctor, self, date)
  end
  # The Patient class needs an instance method, #new_appointment, that takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient.

  def appointments
    # binding.pry
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
#   # The Patient class needs an instance method, #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.
  def doctors

    self.appointments.map do |appointment|
      appointment.doctor
      # binding.pry
    end
    # Appointments.all.select {|doc| }
  end
#   The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
# end
end
