class MoveVisitReasonToAppointments < ActiveRecord::Migration
  def change
    remove_column :customers, :visit_reason
  end
end
