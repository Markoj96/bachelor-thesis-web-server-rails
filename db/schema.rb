# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_20_133541) do

  create_table "players", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "Name", limit: 24, null: false
    t.string "Password", limit: 65, null: false
    t.string "Salt", limit: 11, null: false
    t.integer "Sex"
    t.integer "Age"
    t.integer "Country"
    t.integer "Money"
    t.integer "City"
    t.float "SpawnX", null: false
    t.float "SpawnY", null: false
    t.float "SpawnZ", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.integer "sex"
    t.integer "age"
    t.integer "country"
    t.integer "city"
    t.integer "money"
    t.float "spawnX"
    t.float "spawnY"
    t.float "spawnZ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "Owned", null: false
    t.integer "Owner", null: false
    t.integer "Model", null: false
    t.float "ParkX", null: false
    t.float "ParkY", null: false
    t.float "ParkZ", null: false
    t.float "ParkA", null: false
    t.integer "Color1", null: false
    t.integer "Color2", null: false
    t.integer "Paintjob", null: false
    t.integer "Locked", null: false
    t.integer "Registration", null: false
    t.integer "Spoiler", null: false
    t.integer "Hood", null: false
    t.integer "Roof", null: false
    t.integer "Sideskirt", null: false
    t.integer "Lamps", null: false
    t.integer "Nitro", null: false
    t.integer "Exhaust", null: false
    t.integer "Wheels", null: false
    t.integer "Stereo", null: false
    t.integer "Hydraulics", null: false
    t.integer "Front_bumper", null: false
    t.integer "Rear_bumper", null: false
    t.integer "Vent_right", null: false
    t.integer "Vent_left", null: false
    t.index ["Owner"], name: "Owner"
  end

  add_foreign_key "vehicles", "players", column: "Owner", primary_key: "ID", name: "Vehicle owner"
end
