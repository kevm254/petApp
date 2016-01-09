class MoveNextAppointmentFromCustomToPets < ActiveRecord::Migration
  def change
    add_column :pets, :next_appointment_date, :date
    remove_column :customers, :next_appointment_date, :date
  end
end
