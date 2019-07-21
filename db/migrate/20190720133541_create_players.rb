class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :gender
      t.integer :age
      t.integer :country
      t.integer :city
      t.integer :money
      t.float :spawnX
      t.float :spawnY
      t.float :spawnZ
      t.float :spawnA
      t.integer :role

      t.timestamps
    end
  end
end
