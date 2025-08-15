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

ActiveRecord::Schema[7.1].define(version: 2025_08_15_044552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "animalable_type"
    t.bigint "animalable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animalable_type", "animalable_id"], name: "index_animals_on_animalable_type_and_animalable_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.bigint "bitemporal_id"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.datetime "transaction_from"
    t.datetime "transaction_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "department"
    t.index ["bitemporal_id"], name: "index_employees_on_bitemporal_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bitemporal_id"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.datetime "transaction_from"
    t.datetime "transaction_to"
  end

end
