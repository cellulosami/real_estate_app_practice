class UpdateDatatypesInHouses < ActiveRecord::Migration[6.1]
  def change
    change_column :houses, :bedrooms, :decimal, precision: 3, scale: 1
    change_column :houses, :bathrooms, :decimal, precision: 3, scale: 1
    change_column :houses, :floors, :decimal, precision: 3, scale: 1
    change_column :houses, :availability, :string
  end
end
