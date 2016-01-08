class Pet < ActiveRecord::Base
  has_one :customer
  has_one :doctor
end