class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :doctors, through: :appointments

  # ENSURES PRESENCE
  validates :name, :pet_type, :breed, :age, :weight, :last_visited_date, :next_appointment_date, presence: true

  ##### UTILITY METHODS
  # gets the appointment
  def get_apt
    Appointment.find_by(pet_id: self.id)
  end

  def get_doctor
    get_apt.doctor
  end

  def last_visited_date_f
    if self.last_visited_date
       self.last_visited_date.strftime('%m/%d/%Y')
    else
      'N/A'
    end
  end

  def next_appointment_date_f
    if self.next_appointment_date
      self.next_appointment_date.strftime('%m/%d/%Y')
    else
      'N/A'
    end
  end

  def pet_and_owner_name
    'Pet: ' + self.name + ' - ' + 'Owner: ' + self.customer.full_name
  end
end