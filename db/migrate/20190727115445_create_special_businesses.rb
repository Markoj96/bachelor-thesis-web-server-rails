class CreateSpecialBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :special_businesses do |t|
      t.integer :owned
      t.references :user
      t.string :name
      t.string :description
      t.integer :money, default: 0
      t.integer :price, default: 0
      t.integer :enter_fee, default: 0
      t.float :enterX
      t.float :enterY
      t.float :enterZ
      t.float :enterA
      t.integer :icon, default: 0

      t.timestamps
    end
  end
end
