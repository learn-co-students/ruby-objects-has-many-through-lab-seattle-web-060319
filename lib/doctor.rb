require 'pry'
class Doctor


  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)#if it's taking in an instance, it doesn't need an accessor?
    Appointment.new(self, patient, date)
  end
  # The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor

  def appointments

    Appointment.all.select {|appointment| appointment.doctor == self}
    # binding.pry
      # [1,2,3,4,5].select { |num|  num.even?  }
  end
  # The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
  # def meals
  #   Meal.all.select do |meal|
  #     meal.customer == self
  #   end
  # end

  def patients
      self.appointments.map do |appointment|
        appointment.patient
        # binding.pry
      end
      # Appointments.all.select {|doc| }
    end
  # The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.






end
