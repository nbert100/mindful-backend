class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :cin 
      t.string :insurance
      t.string :phone
      t.string :address
      t.string :zipcode

      t.timestamps
    end
  end
end
