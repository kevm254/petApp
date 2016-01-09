class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new

    # Gets the pet id after being sent from the previous form
    @pet_id = flash[:pet_id]

  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = 'Successfully created!'
      redirect_to appointments_path
    else
      flash[:danger] = 'Please fill in all of the fields'
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      flash[:success] = 'Successfully updated!'
      redirect_to appointment_path(@appointment)
    else
      flash[:danger] = 'Was unable to update!'
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id]).destroy
    redirect_to appointments_path

  end

  private
  def appointment_params
    params.require(:appointment).permit(:date_of_visit, :pet, :customer, :appointment_reminder, :visit_reason)
  end
end
