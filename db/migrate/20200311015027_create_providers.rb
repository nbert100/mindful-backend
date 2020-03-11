class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :insurance 
      # how to make this reflect an array?
      t.string :phone_number
      t.string :fax_number
      t.string :address
      # or should this be an object?
      t.string :zipcode

      t.timestamps
    end
  end
end
