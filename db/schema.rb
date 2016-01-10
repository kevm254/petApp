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

ActiveRecord::Schema.define(version: 20160110204635) do

  create_table "appointments", force: :cascade do |t|
    t.date     "date_of_visit"
    t.string   "pet"
    t.string   "customer"
    t.boolean  "appointment_reminder", default: false
    t.string   "visit_reason"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "pet_id"
    t.integer  "doctor_id"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["pet_id"], name: "index_appointments_on_pet_id"

  create_table "customers", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "area_code"
    t.integer "phone_number_a"
    t.integer "phone_number_b"
    t.integer "doctor_id"
  end

  add_index "customers", ["doctor_id"], name: "index_customers_on_doctor_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school"
    t.integer  "years_in_practice"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string  "name"
    t.string  "pet_type"
    t.string  "breed"
    t.integer "age"
    t.integer "weight"
    t.date    "last_visited_date"
    t.integer "customer_id"
    t.integer "doctor_id"
    t.date    "next_appointment_date"
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id"
  add_index "pets", ["doctor_id"], name: "index_pets_on_doctor_id"

end
