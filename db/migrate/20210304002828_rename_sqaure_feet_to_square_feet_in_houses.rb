class RenameSqaureFeetToSquareFeetInHouses < ActiveRecord::Migration[6.1]
  def change
    rename_column :houses, :sqaure_feet, :square_feet
  end
end
