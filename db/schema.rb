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

ActiveRecord::Schema.define(version: 2019_06_05_110853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battles", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.bigint "pastry_id"
    t.bigint "battle_id"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_id"], name: "index_competitions_on_battle_id"
    t.index ["employee_id"], name: "index_competitions_on_employee_id"
    t.index ["pastry_id"], name: "index_competitions_on_pastry_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.bigint "pastry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pastry_id"], name: "index_employees_on_pastry_id"
  end

  create_table "pastries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "competitions", "battles"
  add_foreign_key "competitions", "employees"
  add_foreign_key "competitions", "pastries"
  add_foreign_key "employees", "pastries"
end
