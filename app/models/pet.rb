class Pet < ActiveRecord::Base
  has_one :customer
  has_one :doctor

  # ENSURES PRESENCE
  validates :name, :type, :breed, :age, :weight, :last_visited_date, presence: true
end