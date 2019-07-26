class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :owned
      t.references :user
      t.integer :price
      t.integer :locked
      t.float :enterX
      t.float :enterY
      t.float :enterZ
      t.float :enterA
      t.float :exitX
      t.float :exitY
      t.float :exitZ
      t.float :exitA
      t.integer :outside_interior
      t.integer :outside_virtual_world
      t.integer :inside_interior
      t.integer :inside_virtual_world
      t.integer :icon
      t.integer :materials
      t.integer :drugs
      t.integer :slot1
      t.integer :slot1_ammo
      t.integer :slot2
      t.integer :slot2_ammo
      t.integer :slot3
      t.integer :slot3_ammo
      t.integer :status # deleted or active
      # add house_weapons table

      t.timestamps
    end
  end
end
