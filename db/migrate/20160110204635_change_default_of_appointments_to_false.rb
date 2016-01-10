class ChangeDefaultOfAppointmentsToFalse < ActiveRecord::Migration
  def change
    change_column_default(:appointments, :appointment_reminder, :false)
  end
end
