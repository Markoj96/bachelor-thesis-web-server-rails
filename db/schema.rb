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

ActiveRecord::Schema.define(version: 2019_07_27_115445) do

  create_table "businesses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "owned"
    t.bigint "user_id"
    t.string "name", default: "Nema"
    t.integer "price"
    t.integer "business_type", default: 0
    t.integer "locked", default: 1
    t.integer "money", default: 0
    t.integer "enter_fee", default: 0
    t.float "enterX"
    t.float "enterY"
    t.float "enterZ"
    t.float "enterA"
    t.float "exitX"
    t.float "exitY"
    t.float "exitZ"
    t.float "exitA"
    t.integer "outside_interior", default: 0
    t.integer "outside_virtual_world", default: 0
    t.integer "inside_interior", default: 0
    t.integer "inside_virtual_world", default: 0
    t.integer "enter_icon", default: 0
    t.integer "exit_icon", default: 0
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "houses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "owned"
    t.bigint "user_id"
    t.integer "price"
    t.integer "locked", default: 1
    t.float "enterX"
    t.float "enterY"
    t.float "enterZ"
    t.float "enterA"
    t.float "exitX"
    t.float "exitY"
    t.float "exitZ"
    t.float "exitA"
    t.integer "outside_interior", default: 0
    t.integer "outside_virtual_world", default: 0
    t.integer "inside_interior", default: 0
    t.integer "inside_virtual_world", default: 0
    t.integer "icon", default: 0
    t.integer "materials", default: 0
    t.integer "drugs", default: 0
    t.integer "slot1", default: 0
    t.integer "slot1_ammo", default: 0
    t.integer "slot2", default: 0
    t.integer "slot2_ammo", default: 0
    t.integer "slot3", default: 0
    t.integer "slot3_ammo", default: 0
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "special_businesses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "owned"
    t.bigint "user_id"
    t.string "name", default: "Nema"
    t.string "description", default: "Nema"
    t.integer "money", default: 0
    t.integer "price", default: 0
    t.integer "enter_fee", default: 0
    t.float "enterX"
    t.float "enterY"
    t.float "enterZ"
    t.float "enterA"
    t.integer "icon", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_special_businesses_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.integer "gender"
    t.integer "age"
    t.integer "country"
    t.integer "city"
    t.integer "money", default: 50
    t.integer "identity_card", default: 0
    t.integer "skin", default: 297
    t.integer "banned", default: 0
    t.integer "banned_time", default: 0
    t.float "spawnX"
    t.float "spawnY"
    t.float "spawnZ"
    t.float "spawnA"
    t.integer "role"
    t.integer "bank_account", default: 0
    t.integer "bank_money", default: 0
    t.integer "bank_credit", default: 0
    t.integer "admin", default: 0
    t.integer "donator", default: 0
    t.integer "donator_points", default: 0
    t.integer "level", default: 1
    t.integer "respect", default: 0
    t.integer "hours", default: 0
    t.integer "play_time", default: 0
    t.integer "paycheck", default: 0
    t.integer "dead", default: 0
    t.integer "kills", default: 0
    t.integer "deaths", default: 0
    t.integer "job", default: 0
    t.integer "job_contract", default: 0
    t.integer "mobile", default: 0
    t.integer "mobile_number", default: 0
    t.integer "mobile_credit", default: 0
    t.integer "address_book", default: 0
    t.integer "tut", default: 0
    t.integer "on_tut", default: 0
    t.integer "detective_points", default: 0
    t.integer "detective_level", default: 0
    t.integer "truckman_points", default: 0
    t.integer "truckman_level", default: 0
    t.integer "taxi_points", default: 0
    t.integer "taxi_level", default: 0
    t.integer "mechanic_points", default: 0
    t.integer "mechanic_level", default: 0
    t.integer "drugs", default: 0
    t.integer "materials", default: 0
    t.integer "org_leader", default: 0
    t.integer "org_member", default: 0
    t.integer "org_rank", default: 0
    t.integer "org_skin", default: 0
    t.integer "wanted", default: 0
    t.integer "wanted_times", default: 0
    t.integer "arrested", default: 0
    t.integer "arrested_time", default: 0
    t.integer "arrested_times", default: 0
    t.integer "driving_licence", default: 0
    t.integer "flying_licence", default: 0
    t.integer "sailing_licence", default: 0
    t.integer "muted", default: 0
    t.integer "muted_time", default: 0
    t.integer "pistol_skill", default: 0
    t.integer "silenced_skill", default: 0
    t.integer "desert_skill", default: 0
    t.integer "shotgun_skill", default: 0
    t.integer "sawnoff_skil", default: 0
    t.integer "combat_skill", default: 0
    t.integer "uzi_skill", default: 0
    t.integer "mp5_skill", default: 0
    t.integer "ak47_skill", default: 0
    t.integer "m4_skill", default: 0
    t.integer "sniper_skill", default: 0
    t.integer "fighting_style", default: 0
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
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

end
