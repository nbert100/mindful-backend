class CreateProvyders < ActiveRecord::Migration[5.2]
  def change
    create_table :provyders do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :specialty
      t.string :phone
      t.string :fax
      t.string :address
      t.string :zipcode

      t.timestamps
    end
  end
end
