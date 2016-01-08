class Doctor < ActiveRecord::Base
  validates :first_name, :last_name, :address, :city, :state, :zip, :school, :years_in_practice, presence: true
end
