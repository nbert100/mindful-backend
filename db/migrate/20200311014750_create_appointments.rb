class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :provider_id
      t.datetime :appointment
      t.string :note

      t.timestamps
    end
  end
end
