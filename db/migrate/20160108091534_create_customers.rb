class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |f|
      f.string :first_name
      f.string :last_name
      f.integer :phone_number
      f.date :next_appointment_date
      f.string :visit_reason
    end
  end
end
