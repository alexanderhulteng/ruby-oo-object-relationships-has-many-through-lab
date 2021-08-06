

class Patient
    @@all = []
    attr_accessor :name, :appointment, :doctor

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |k|
          k.patient == self
        end
    end

    def doctors
        Appointment.all.map do |l|
          l.doctor
        end
    end







end