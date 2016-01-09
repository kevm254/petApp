class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :pet

    def reminder
        if self.appointment_reminder
            "Completed"
        else
            "Need to remind"
        end
    end
end
