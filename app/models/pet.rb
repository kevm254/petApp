class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  ##### VALIDATIONS
  # ENSURES PRESENCE
  validates :name, :pet_type, :breed, :age, :weight, :last_visited_date, :next_appointment_date, :customer_id, presence: true

  # ENSURES PROPER RANGE
  validates :name, length: { maximum: 35 }
  validates :breed, length: { maximum: 35 }


  ##### UTILITY METHODS
  # gets the appointment
  def get_apt
    apt = Appointment.find_by(pet_id: self.id)
    if apt
      apt
    end
  end

  def get_doctor
    unless get_apt.nil?
      get_apt.doctor
    end
  end

  def last_visited_date_f
    if self.last_visited_date
       self.last_visited_date.strftime('%m/%d/%Y')
    else
      'N/A'
    end
  end

  def next_appointment_date_f
    #get the appointment
    next_apt = get_apt

    #checks to see if an appointment exists
    if next_apt
      next_apt_date = next_apt.date_of_visit
      next_apt_date.strftime('%m/%d/%Y')
    else
      'N/A'
    end
  end

  def pet_and_owner_name
    self.customer.full_name + '  (Pet Name: ' + self.name + '-- ' + self.breed + ')'
  end
end