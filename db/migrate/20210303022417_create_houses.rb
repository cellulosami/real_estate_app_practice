class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.text :description
      t.integer :year_built
      t.decimal :integer
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :floors
      t.boolean :availability
      t.string :address
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
