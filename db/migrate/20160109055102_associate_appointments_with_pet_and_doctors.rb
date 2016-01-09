class AssociateAppointmentsWithPetAndDoctors < ActiveRecord::Migration
    def change
      change_table :appointments do |f|
        f.references :pet, index: true, foreign_key: true
        f.references :doctor, index: true, foreign_key: true
      end
    end
end
