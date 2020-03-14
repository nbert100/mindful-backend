class DropProviders < ActiveRecord::Migration[5.2]
  def change
    drop_table :providers
  end
end
