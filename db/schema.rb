# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_22_100715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "height"
    t.integer "weight"
    t.integer "reach"
    t.string "stance"
    t.bigint "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_boxers_on_gym_id"
  end

  create_table "fights", force: :cascade do |t|
    t.bigint "boxer_a_id", null: false
    t.bigint "boxer_b_id", null: false
    t.datetime "time_scheduled"
    t.integer "rounds"
    t.integer "round_time"
    t.bigint "winner_id"
    t.bigint "loser_id"
    t.string "result"
    t.bigint "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boxer_a_id"], name: "index_fights_on_boxer_a_id"
    t.index ["boxer_b_id"], name: "index_fights_on_boxer_b_id"
    t.index ["gym_id"], name: "index_fights_on_gym_id"
    t.index ["loser_id"], name: "index_fights_on_loser_id"
    t.index ["winner_id"], name: "index_fights_on_winner_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boxers", "gyms"
  add_foreign_key "fights", "boxers", column: "boxer_a_id"
  add_foreign_key "fights", "boxers", column: "boxer_b_id"
  add_foreign_key "fights", "boxers", column: "loser_id"
  add_foreign_key "fights", "boxers", column: "winner_id"
  add_foreign_key "fights", "gyms"
end
