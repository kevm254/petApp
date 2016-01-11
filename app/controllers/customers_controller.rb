class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])

    #Find customer's associated pets
    @customer_pets = Pet.where(customer_id: @customer.id)
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:message] = 'Successfully created!'
      redirect_to navigation_secretaries_path
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
      redirect_to customer_path(@customer)
    else
      flash[:danger] = 'Was unable to update'
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id]).destroy
    redirect_to customers_path
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_number_a, :phone_number_b, :visit_reason, :area_code)
  end
end