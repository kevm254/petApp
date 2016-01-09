class Doctor < ActiveRecord::Base
  ### ASSOCIATIONS
  has_many :appointments
  has_many :pets, through: :appointments


  ### VALIDATIONS
  # ENSURES PRESENCE
  validates :first_name, :last_name, :address, :city, :state, :zip, :school, :years_in_practice,  presence: true

  # ENSURES NUMERICALITY
  validates :zip, :years_in_practice, numericality: true

  # ENSURES PROPER RANGE
  validates :first_name, length: { maximum: 17 }
  validates :last_name, length: { maximum: 17 }
  validates :zip, length: { is: 5 }
  validates :years_in_practice, length: { minimum: 1, maximum: 100 }


  ### UTILITY METHODS
  def full_name
    return self.first_name + ' ' + self.last_name
  end
end
