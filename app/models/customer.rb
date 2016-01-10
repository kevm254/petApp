class Customer < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  
  def full_name
    self.first_name + ' '  + self.last_name
  end

  def full_phone_number
    '(' + self.area_code.to_s + ')' + self.phone_number_a.to_s + '-' + self.phone_number_b.to_s
  end

  def get_pets
    Pet.find_all(customer_id: self.id)
  end
end