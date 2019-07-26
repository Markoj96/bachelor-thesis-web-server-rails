class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :owned
      t.references :user
      t.integer :model
      t.float :parkX
      t.float :parkY
      t.float :parkZ
      t.float :parkA
      t.integer :color1
      t.integer :color2
      t.integer :paintjob
      t.integer :locked
      t.string :registration
      t.integer :spoiler
      t.integer :hood
      t.integer :roof
      t.integer :side_skirt
      t.integer :lamps
      t.integer :nitro
      t.integer :exhaust
      t.integer :wheels
      t.integer :stereo
      t.integer :hydraulics
      t.integer :front_bumper
      t.integer :rear_bumper
      t.integer :vent_right
      t.integer :vent_left
      t.integer :status

      t.timestamps
    end
  end
end
