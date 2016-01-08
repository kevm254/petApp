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
      flash[:success] = 'This was successfully created'
      redirect_to doctor_path(@doctor)
    else
      flash[:danger] = 'There were some errors'
      render :new
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    Doctor.find(params[:id]).destroy
    redirect_to doctors_path
  end


  private
  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :address, :city, :state, :zip, :school)
  end
end