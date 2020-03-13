class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :phone
      t.string :fax
      t.string :address
      t.string :zipcode

      t.timestamps
    end
  end
end
