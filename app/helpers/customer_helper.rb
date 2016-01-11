module CustomerHelper
  def get_pets(customer)
    unless customer.get_pets.nil?
      customer.get_pets
    end
  end
end