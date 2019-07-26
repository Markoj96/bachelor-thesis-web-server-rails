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

ActiveRecord::Schema.define(version: 2019_07_26_180448) do

  create_table "houses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "owned"
    t.bigint "user_id"
    t.integer "price"
    t.integer "locked"
    t.float "enterX"
    t.float "enterY"
    t.float "enterZ"
    t.float "enterA"
    t.float "exitX"
    t.float "exitY"
    t.float "exitZ"
    t.float "exitA"
    t.integer "outside_interior"
    t.integer "outside_virtual_world"
    t.integer "inside_interior"
    t.integer "inside_virtual_world"
    t.integer "icon"
    t.integer "materials"
    t.integer "drugs"
    t.integer "slot1"
    t.integer "slot1_ammo"
    t.integer "slot2"
    t.integer "slot2_ammo"
    t.integer "slot3"
    t.integer "slot3_ammo"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.integer "gender"
    t.integer "age"
    t.integer "country"
    t.integer "city"
    t.integer "money"
    t.float "spawnX"
    t.float "spawnY"
    t.float "spawnZ"
    t.float "spawnA"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  create_table "vehicles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "owned"
    t.bigint "user_id"
    t.integer "model"
    t.float "parkX"
    t.float "parkY"
    t.float "parkZ"
    t.float "parkA"
    t.integer "color1"
    t.integer "color2"
    t.integer "paintjob"
    t.integer "locked"
    t.string "registration"
    t.integer "spoiler"
    t.integer "hood"
    t.integer "roof"
    t.integer "side_skirt"
    t.integer "lamps"
    t.integer "nitro"
    t.integer "exhaust"
    t.integer "wheels"
    t.integer "stereo"
    t.integer "hydraulics"
    t.integer "front_bumper"
    t.integer "rear_bumper"
    t.integer "vent_right"
    t.integer "vent_left"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

end
