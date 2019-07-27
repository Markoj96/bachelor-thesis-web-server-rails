class CreateSpecialBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :special_businesses do |t|
      t.integer :owned
      t.references :user
      t.string :name
      t.string :description
      t.integer :money
      t.integer :price
      t.integer :enter_fee
      t.float :enterX
      t.float :enterY
      t.float :enterZ
      t.float :enterA
      t.integer :icon

      t.timestamps
    end
  end
end
