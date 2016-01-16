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
      flash[:success] = 'Successfully created!'
      redirect_to customer_path(@customer)
    else
      flash[:danger] = 'Unable to save!'
      render :new
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
    params.require(:customer).permit(:first_name, :last_name, :phone_number)
  end
end