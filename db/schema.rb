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

ActiveRecord::Schema.define(version: 2019_08_17_213132) do

  create_table "characters", force: :cascade do |t|
    t.string "char_name"
    t.string "race"
    t.string "char_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "campaign"
    t.integer "stats"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "might"
    t.integer "agility"
    t.integer "endurance"
    t.integer "guile"
    t.integer "wit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
    t.text "features"
    t.text "bio"
    t.integer "hit_points"
    t.integer "per_day"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.string "city"
    t.string "state"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters"
  end

end
