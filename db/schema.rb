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

ActiveRecord::Schema.define(version: 20180402175434) do

  create_table "barrels", force: :cascade do |t|
    t.string "caliber"
    t.string "barrel_type"
    t.decimal "length", precision: 4, scale: 4
    t.decimal "twist", precision: 4, scale: 4
    t.string "contour"
    t.string "rifling"
    t.integer "firearm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["firearm_id"], name: "index_barrels_on_firearm_id"
  end

  create_table "barrels_firearms", id: false, force: :cascade do |t|
    t.integer "barrel_id", null: false
    t.integer "firearm_id", null: false
    t.integer "user_id"
    t.index ["barrel_id", "firearm_id"], name: "index_barrels_firearms_on_barrel_id_and_firearm_id"
    t.index ["firearm_id", "barrel_id"], name: "index_barrels_firearms_on_firearm_id_and_barrel_id"
    t.index ["user_id"], name: "index_barrels_firearms_on_user_id"
  end

  create_table "firearms", force: :cascade do |t|
    t.string "name"
    t.string "firearm_type"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_firearms_on_user_id"
  end

  create_table "outings", force: :cascade do |t|
    t.datetime "date"
    t.string "outing_type"
    t.integer "shots_fired"
    t.integer "firearm_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["firearm_id"], name: "index_outings_on_firearm_id"
    t.index ["user_id"], name: "index_outings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
