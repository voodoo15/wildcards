# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160425015806) do

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.integer  "score_for"
    t.integer  "score_against"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.string   "game_diamond"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "team_number"
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "phone_number"
    t.string   "throws"
    t.string   "bats"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id"
    t.integer  "admin_id"
    t.boolean  "admin",        default: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "plate_app"
    t.integer  "at_bat"
    t.integer  "first_base"
    t.integer  "second_base"
    t.integer  "third_base"
    t.integer  "homerun"
    t.integer  "hit"
    t.integer  "rbi"
    t.integer  "run"
    t.integer  "walk"
    t.integer  "strikeout"
    t.integer  "sac_fly"
    t.integer  "profile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "tier"
    t.string   "team_abbreviation"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
