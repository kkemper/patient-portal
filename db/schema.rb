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

ActiveRecord::Schema.define(version: 20160217162147) do

  create_table "clinical_visits", force: :cascade do |t|
    t.integer  "visitID"
    t.integer  "patientID"
    t.integer  "physicianID"
    t.integer  "facilityID"
    t.date     "date"
    t.time     "visitTime"
    t.integer  "visitType"
    t.string   "diagnosis"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.integer  "patientID"
    t.integer  "policyID"
    t.date     "expirationDate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "demographics", force: :cascade do |t|
    t.integer  "demoID"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.integer  "policyID"
    t.string   "providerName"
    t.string   "coverageDetails"
    t.string   "providerContact"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "medical_conditions", force: :cascade do |t|
    t.integer  "medicalID"
    t.string   "name"
    t.string   "symptom"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medical_facilities", force: :cascade do |t|
    t.integer  "facilityID"
    t.integer  "demoID"
    t.string   "specialties"
    t.integer  "phoneNumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.integer  "patientID"
    t.integer  "medicalID"
    t.date     "timeDiagnosed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "patientID"
    t.integer  "demoID"
    t.string   "fName"
    t.string   "lName"
    t.date     "birthDate"
    t.integer  "age"
    t.string   "gender"
    t.integer  "phone"
    t.string   "email"
    t.string   "allergies"
    t.string   "currentMedication"
    t.integer  "clinicalTrials"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.integer  "physicianID"
    t.integer  "demoID"
    t.string   "fName"
    t.string   "lname"
    t.string   "specialty"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_names", force: :cascade do |t|
    t.string   "username"
    t.integer  "patientID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitals", force: :cascade do |t|
    t.integer  "vitalID"
    t.integer  "patientID"
    t.string   "vital_type"
    t.time     "dateTime"
    t.string   "vitalDetails"
    t.string   "Units"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
