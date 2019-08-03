class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.integer :owned
      t.references :user
      t.string :name
      t.integer :price
      t.integer :business_type, default: 0
      t.integer :locked, default: 1
      t.integer :money, default: 0
      t.integer :enter_fee, default: 0
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
      t.integer :enter_icon, default: 0
      t.integer :exit_icon, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
