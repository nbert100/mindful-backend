class AddWhenToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :when, :datetime
  end
end
