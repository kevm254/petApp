class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.string :pet
      t.string :customer
      t.boolean :appointment_reminder
      t.string :visit_reason

      t.timestamps null: false
    end
  end
end
