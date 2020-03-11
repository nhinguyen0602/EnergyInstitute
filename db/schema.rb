# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_11_082450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "provincial"
    t.string "district"
    t.string "commune"
    t.float "coordinate_X"
    t.float "coordinate_Y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.bigint "sector_id", null: false
    t.bigint "address_id", null: false
    t.string "name"
    t.float "production_value"
    t.integer "number_of_employee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year_of_investigation"
    t.index ["address_id"], name: "index_enterprises_on_address_id"
    t.index ["sector_id"], name: "index_enterprises_on_sector_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.bigint "subsector_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subsector_id"], name: "index_sectors_on_subsector_id"
  end

  create_table "subsectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name", null: false
    t.boolean "gender", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "enterprise_id"
    t.index ["enterprise_id"], name: "index_users_on_enterprise_id"
  end

  add_foreign_key "enterprises", "addresses"
  add_foreign_key "enterprises", "sectors"
  add_foreign_key "sectors", "subsectors"
  add_foreign_key "users", "enterprises"
end
