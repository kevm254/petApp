class Customer < ActiveRecord::Base
  ##### ASSOCIATIONS
  has_many :pets, dependent: :destroy


  ##### VALIDATIONS
  # ENSURES PRESENCE OF FIELDS
  validates :first_name, :last_name, :phone_number, presence: true

  # ENSURES PROPER RANGE
  validates :phone_number, length: { maximum: 10 }
  validates :first_name, :last_name, length: { minimum: 2, maximum: 17 }


  ##### UTILITY METHODS
  def full_name
    first_name + ' '  + last_name
  end

  def full_phone_number
    unless phone_number.nil?
      return "(#{phone_number[0,3]})-#{phone_number[3,3]}-#{phone_number[6, 4]}"
      phone_number
    else
      return "N/A"
    end
  end

  def phone_number=(value)
    write_attribute(:phone_number, value.gsub(/[^0-9]/i, ''))
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