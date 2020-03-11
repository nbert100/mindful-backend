class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :provider_id
      t.datetime :appointment
      t.string :note
      # how to create option of multiple notes

      t.timestamps
    end
  end
end
