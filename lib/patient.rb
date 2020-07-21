class Patient 
  
  @@all = []
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor )
  end 
  def appointments 
    Appointment.all.select{|appointment| appointment.patient == self}
  end 
  
  def doctors 
    a = []
    appointments.each do |appointment| 
      a << appointment.doctor 
    end 
    a 
  end 
end 