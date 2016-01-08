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
      redirect_to doctors_url
    end
  end


  private
  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :address, :city)
  end
end