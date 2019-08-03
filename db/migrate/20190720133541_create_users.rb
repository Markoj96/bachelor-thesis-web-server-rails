class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :gender
      t.integer :age
      t.integer :country
      t.integer :city
      t.integer :money, default: 50
      t.integer :identity_card, default: 0
      t.integer :skin, default: 297
      t.integer :banned, default: 0
      t.integer :banned_time, default: 0
      t.float :spawnX
      t.float :spawnY
      t.float :spawnZ
      t.float :spawnA
      t.integer :role, default: :player
      t.integer :bank_account, default: 0
      t.integer :bank_money, default: 0
      t.integer :bank_credit, default: 0
      t.integer :admin, default: 0
      t.integer :donator, default: 0
      t.integer :donator_points, default: 0
      t.integer :level, default: 1
      t.integer :respect, default: 0
      t.integer :hours, default: 0
      t.integer :play_time, default: 0
      t.integer :paycheck, default: 0
      t.integer :dead, default: 0
      t.integer :kills, default: 0
      t.integer :deaths, default: 0
      t.integer :job, default: 0
      t.integer :job_contract, default: 0
      t.integer :mobile, default: 0
      t.integer :mobile_number, default: 0
      t.integer :mobile_credit, default: 0
      t.integer :address_book, default: 0
      t.integer :tut, default: 0
      t.integer :on_tut, default: 0
      t.integer :detective_points, default: 0
      t.integer :detective_level, default: 0
      t.integer :truckman_points, default: 0
      t.integer :truckman_level, default: 0
      t.integer :taxi_points, default: 0
      t.integer :taxi_level, default: 0
      t.integer :mechanic_points, default: 0
      t.integer :mechanic_level, default: 0
      t.integer :drugs, default: 0
      t.integer :materials, default: 0
      t.integer :org_leader, default: 0
      t.integer :org_member, default: 0
      t.integer :org_rank, default: 0
      t.integer :org_skin, default: 0
      t.integer :wanted, default: 0
      t.integer :wanted_times, default: 0
      t.integer :arrested, default: 0
      t.integer :arrested_time, default: 0
      t.integer :arrested_times, default: 0
      t.integer :driving_licence, default: 0
      t.integer :flying_licence, default: 0
      t.integer :sailing_licence, default: 0
      t.integer :muted, default: 0
      t.integer :muted_time, default: 0
      t.integer :pistol_skill, default: 0
      t.integer :silenced_skill, default: 0
      t.integer :desert_skill, default: 0
      t.integer :shotgun_skill, default: 0
      t.integer :sawnoff_skil, default: 0
      t.integer :combat_skill, default: 0
      t.integer :uzi_skill, default: 0
      t.integer :mp5_skill, default: 0
      t.integer :ak47_skill, default: 0
      t.integer :m4_skill, default: 0
      t.integer :sniper_skill, default: 0
      t.integer :fighting_style, default: 0

      t.timestamps
    end
  end
end
