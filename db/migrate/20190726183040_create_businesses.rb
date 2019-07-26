class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.integer :owned
      t.references :user
      t.string :name
      t.integer :price
      t.integer :type
      t.integer :locked
      t.integer :money
      t.integer :enter_fee
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
      t.integer :exit_icon
      t.integer :status

      t.timestamps
    end
  end
end
