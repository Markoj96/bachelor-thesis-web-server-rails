class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :owned
      t.references :user
      t.integer :price
      t.integer :locked, default: 1
      t.float :enterX
      t.float :enterY
      t.float :enterZ
      t.float :enterA
      t.float :exitX
      t.float :exitY
      t.float :exitZ
      t.float :exitA
      t.integer :outside_interior, default: 0
      t.integer :outside_virtual_world, default: 0
      t.integer :inside_interior, default: 0
      t.integer :inside_virtual_world, default: 0
      t.integer :icon, default: 0
      t.integer :materials, default: 0
      t.integer :drugs, default: 0
      t.integer :slot1, default: 0
      t.integer :slot1_ammo, default: 0
      t.integer :slot2, default: 0
      t.integer :slot2_ammo, default: 0
      t.integer :slot3, default: 0
      t.integer :slot3_ammo, default: 0
      t.integer :status # deleted or active
      # add house_weapons table

      t.timestamps
    end
  end
end
