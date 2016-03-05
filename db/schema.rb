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

ActiveRecord::Schema.define(version: 20160305221815) do

  create_table "clinical_visits", force: :cascade do |t|
    t.string   "patientID"
    t.string   "physicianID"
    t.string   "facilityID"
    t.date     "date"
    t.time     "visitTime"
    t.string   "visitType"
    t.text     "diagnosis"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.string   "patientID"
    t.string   "policyid"
    t.date     "expirationDate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demographics", force: :cascade do |t|
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
    t.string   "policyID"
    t.string   "providerName"
    t.string   "coverageDetails"
    t.string   "providerContact"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "medical_conditions", force: :cascade do |t|
    t.string   "name"
    t.text     "symptom"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medical_facilities", force: :cascade do |t|
    t.string   "demoID"
    t.text     "specialties"
    t.string   "phoneNumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.string   "patientID"
    t.string   "medicalID"
    t.date     "timeDiagnosed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patients", force: :cascade do |t|
    t.text     "demoID"
    t.string   "fName"
    t.string   "lName"
    t.date     "birthDate"
    t.integer  "age"
    t.string   "gender"
    t.string   "phone"
    t.string   "email"
    t.text     "allergies"
    t.text     "currentMedication"
    t.text     "clinicalTrials"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "demoID"
    t.string   "fName"
    t.string   "lname"
    t.text     "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "user_names" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "vitals", force: :cascade do |t|
    t.string   "patientID"
    t.string   "vital_type"
    t.datetime "dateTime"
    t.string   "vitalDetails"
    t.string   "Units"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "patient_entered"
  end

end
