class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |f|
      f.string :first_name
      f.string :last_name
      f.integer :area_code
      f.integer :phone_number_a
      f.integer :phone_number_b
      f.date :next_appointment_date
      f.string :visit_reason

      f.references :doctor, index: true, foreign_key: true
    end
  end
end
