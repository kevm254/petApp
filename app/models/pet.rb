class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :doctors, through: :appointments

  # ENSURES PRESENCE
  validates :name, :pet_type, :breed, :age, :weight, :last_visited_date, :next_appointment_date, presence: true
end