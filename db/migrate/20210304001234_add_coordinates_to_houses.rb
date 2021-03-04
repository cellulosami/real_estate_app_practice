class AddCoordinatesToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :longitude, :decimal, precision: 10, scale: 7
    add_column :houses, :latitude, :decimal, precision: 10, scale: 7
  end
end
