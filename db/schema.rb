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

ActiveRecord::Schema.define(version: 2020_03_12_073142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emission_factors", force: :cascade do |t|
    t.bigint "sector_id"
    t.string "emission_source"
    t.integer "unit"
    t.integer "carbon_dioxide"
    t.integer "methane"
    t.integer "nitrous_dioxide"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_emission_factors_on_sector_id"
  end

  create_table "emission_reasons", force: :cascade do |t|
    t.string "contain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "energy_consumptions", force: :cascade do |t|
    t.bigint "enterprise_id"
    t.integer "year_of_investigation"
    t.integer "self_produced_electricity"
    t.integer "consumption_electricity"
    t.integer "coal"
    t.integer "bitum_coal"
    t.integer "coke_coal"
    t.integer "dust_coal"
    t.integer "ko"
    t.integer "do"
    t.integer "fo"
    t.integer "lpg"
    t.integer "ng"
    t.integer "biomass_energy"
    t.integer "renewable_energy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_energy_consumptions_on_enterprise_id"
  end

  create_table "enterprise_details", force: :cascade do |t|
    t.string "provincial"
    t.string "district"
    t.string "commune"
    t.float "lat"
    t.float "lng"
    t.float "production_value"
    t.integer "number_of_employee"
    t.integer "year_of_investigation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.bigint "sector_id", null: false
    t.bigint "enterprise_detail_id", null: false
    t.string "tax_code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_detail_id"], name: "index_enterprises_on_enterprise_detail_id"
    t.index ["sector_id"], name: "index_enterprises_on_sector_id"
  end

  create_table "greenhouse_emission_details", force: :cascade do |t|
    t.bigint "greenhouse_emission_id"
    t.bigint "emission_reason_id"
    t.integer "carbon_dioxide", default: 0
    t.integer "methane", default: 0
    t.integer "nitrous_dioxide", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["emission_reason_id"], name: "index_greenhouse_emission_details_on_emission_reason_id"
    t.index ["greenhouse_emission_id"], name: "index_greenhouse_emission_details_on_greenhouse_emission_id"
  end

  create_table "greenhouse_emissions", force: :cascade do |t|
    t.integer "year_of_investigation"
    t.bigint "enterprise_id"
    t.bigint "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_greenhouse_emissions_on_enterprise_id"
    t.index ["product_id"], name: "index_greenhouse_emissions_on_product_id"
  end

  create_table "productivities", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "year_of_investigation"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_productivities_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "enterprise_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_products_on_enterprise_id"
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

  add_foreign_key "emission_factors", "sectors"
  add_foreign_key "energy_consumptions", "enterprises"
  add_foreign_key "enterprises", "enterprise_details"
  add_foreign_key "enterprises", "sectors"
  add_foreign_key "greenhouse_emission_details", "emission_reasons"
  add_foreign_key "greenhouse_emission_details", "greenhouse_emissions"
  add_foreign_key "greenhouse_emissions", "enterprises"
  add_foreign_key "greenhouse_emissions", "products"
  add_foreign_key "productivities", "products"
  add_foreign_key "products", "enterprises"
  add_foreign_key "sectors", "subsectors"
  add_foreign_key "users", "enterprises"
end
