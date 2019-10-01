class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :exterior_color
      t.string :interior_color
      t.integer :price
      t.integer :mileage

      t.timestamps
    end
  end
end
