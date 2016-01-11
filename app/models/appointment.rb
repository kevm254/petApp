class Appointment < ActiveRecord::Base
  ##### VALIDATIONS
  # ENSURES PRESENCE
  validates :date_of_visit, :pet_id, :doctor_id, :visit_reason, presence: true

  belongs_to :doctor
  belongs_to :pet

  def reminder
    if self.appointment_reminder
      'Reminder Sent'
    else
      #Gets the difference between now and apt date
      date_diff = (self.date_of_visit - Date.today).to_i
      "Need to remind in #{ date_diff.to_s + ' ' + 'day'.pluralize(date_diff) }"
    end
  end

  def date_of_visit_f
    if date_of_visit
      date_of_visit.strftime('%m/%d/%Y')
    else
      'N/A'
    end
  end
end
