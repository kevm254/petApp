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

    def date_of_visit_f
        if date_of_visit
            date_of_visit.strftime("%m/%d/%Y")
        else
            "N/A"
        end
    end
end
