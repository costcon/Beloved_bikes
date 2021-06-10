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

ActiveRecord::Schema.define(version: 2021_06_04_152115) do

  create_table "Users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "postal_code"
    t.text "address"
    t.string "telephone_number"
    t.string "profile_image_id"
    t.text "profile_comment"
    t.string "license_number"
    t.string "license_date"
    t.string "license_expiration"
    t.integer "license_image_1"
    t.integer "license_image_2"
    t.boolean "id_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "bikes", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "bike_image_id"
    t.string "maker"
    t.string "displacement"
    t.integer "price"
    t.string "mileage"
    t.string "modek_year"
    t.text "introduction"
    t.boolean "favorite"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bike_id"
    t.string "reserve_name"
    t.string "reserve_date"
    t.integer "payment_method"
    t.text "reserve_comment"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reviewer_id"
    t.integer "reviewed_id"
    t.integer "rate"
    t.text "review_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
