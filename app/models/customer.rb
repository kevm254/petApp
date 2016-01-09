class Customer < ActiveRecord::Base
  has_many :pets

  def full_name
    self.first_name + ' '  + self.last_name
  end
end