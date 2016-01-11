class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:success] = 'Successfully created!'
    else
      flash[:danger] = 'Please fill in all of the fields'
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @customer_id = @pet.customer_id
  end

  def edit
    @pet = Pet.find(params[:id])
    @customer_id = @pet.customer_id
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      flash[:success] = 'Successfully updated!'
      redirect_to pet_path(@pet)
    else
      flash[:danger] = 'Was unable to update!'
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id]).destroy
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :pet_type, :breed, :age, :weight, :last_visited_date, :next_appointment_date, :customer_id, :doctor_id)
  end
end
