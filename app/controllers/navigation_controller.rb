class NavigationController < ApplicationController
  def customer
    @customers = Customer.all
  end

  def secretary
  end

  def doctor
  end

  def admin
  end
end