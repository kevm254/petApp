class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      flash[:success] = 'Successfully created!'
      redirect_to doctors_path
    else
      flash[:danger] = 'Please fill in all of the fields'
      render :new
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor= Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      flash[:success] = 'Successfully updated!'
      redirect_to doctor_path(@doctor)
    else
      flash[:danger] = 'Was unable to update!'
      render :edit
    end
  end

  def destroy
    Doctor.find(params[:id]).destroy
    redirect_to doctors_path
  end


  private
  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :address, :city, :state, :zip, :school, :years_in_practice)
  end
end