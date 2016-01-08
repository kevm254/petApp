class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:message] = 'Successfully created!'
      redirect_to customers_path
    else
      flash[:message] = 'Please fill in all of the fields'
      render new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = 'Successfully updated!'
    else
      flash[:danger] = 'Was unable to update'
    end
  end

  def destroy
    @customer = Customer.find(params[:id]).destroy
    redirect_to customers_path
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_number, :next_appointment_date, :visit_reason, :area_code)
  end
end