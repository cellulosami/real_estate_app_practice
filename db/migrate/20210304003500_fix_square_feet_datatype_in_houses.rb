class FixSquareFeetDatatypeInHouses < ActiveRecord::Migration[6.1]
  def change
    change_column :houses, :square_feet, :decimal, precision: 8, scale: 2
  end
end
