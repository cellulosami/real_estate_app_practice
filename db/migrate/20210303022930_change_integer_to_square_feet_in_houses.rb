class ChangeIntegerToSquareFeetInHouses < ActiveRecord::Migration[6.1]
  def change
    rename_column :houses, :integer, :sqaure_feet
  end
end
