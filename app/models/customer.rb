class Customer < ActiveRecord::Base
  ##### ASSOCIATIONS
  has_many :pets, dependent: :destroy


  ##### VALIDATIONS
  # ENSURES PROPER RANGE
  validates :phone_number_a, length: { maximum: 3 }
  validates :phone_number_b, length: { maximum: 4 }
  validates :first_name, :last_name, length: { maximum: 17 }


  ##### UTILITY METHODS
  def full_name
    self.first_name + ' '  + self.last_name
  end

  def full_phone_number
    '(' + self.area_code.to_s + ')' + ' ' + self.phone_number_a.to_s + '-' + self.phone_number_b.to_s
  end

  def get_pets
    #pets = Pet.find_by(customer_id: self.id)
     pets = Pet.where(customer_id: self.id)
    # If a pet exists, return the pets property
    if pets
      pets
    end
  end
end