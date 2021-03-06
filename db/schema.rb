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

ActiveRecord::Schema.define(version: 20150820092045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "industry"
    t.string   "website"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "imageURL"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "start_date"
    t.string   "duration"
    t.string   "hours"
    t.string   "location"
    t.decimal  "wage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "employer_id"
    t.string   "requiredSkills"
    t.string   "contactName"
    t.string   "contactEmail"
    t.string   "locationmap"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id", using: :btree

  create_table "jobseekers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "imageURL"
    t.string   "PrimarySkill"
    t.string   "SecondarySkill"
  end

  create_table "offers", force: :cascade do |t|
    t.boolean  "accepted"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jobseeker_id"
    t.integer  "job_id"
  end

  add_index "offers", ["job_id"], name: "index_offers_on_job_id", using: :btree
  add_index "offers", ["jobseeker_id"], name: "index_offers_on_jobseeker_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jobseeker_id"
  end

  add_index "skills", ["jobseeker_id"], name: "index_skills_on_jobseeker_id", using: :btree

  add_foreign_key "jobs", "employers"
  add_foreign_key "offers", "jobs"
  add_foreign_key "offers", "jobseekers"
  add_foreign_key "skills", "jobseekers"
end
