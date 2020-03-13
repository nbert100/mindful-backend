class RemoveAppointmentFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :appointment, :datetime
  end
end
