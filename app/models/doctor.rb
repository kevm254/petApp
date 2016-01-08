class Doctor < ActiveRecord::Base
  # ENSURES PRESENCE
  validates :first_name, :last_name, :address, :city, :state, :zip, :school, :years_in_practice,  presence: true

  # ENSURES NUMERICALITY
  validates :zip, :years_in_practice, numericality: true

  # ENSURES PROPER RANGE
  validates :first_name, length: { maximum: 17 }
  validates :last_name, length: { maximum: 17 }
  validates :zip, length: { is: 5 }
  validates :years_in_practice, length: { minimum: 1, maximum: 100 }

end
