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

ActiveRecord::Schema.define(version: 2020_04_07_082248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climate_changes", force: :cascade do |t|
    t.bigint "sector_id"
    t.integer "year_of_investigation"
    t.float "intensity"
    t.float "energy_consumption"
    t.float "emission_structure"
    t.float "cnc_cnx_ratio"
    t.float "cssx_mt_ratio"
    t.float "cssx_sh_ratio"
    t.float "gtsx_hotro_ratio"
    t.float "ctx_ratio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_climate_changes_on_sector_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.bigint "province_id"
    t.index ["province_id"], name: "index_districts_on_province_id"
  end

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
    t.string "description"
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
    t.bigint "enterprise_id"
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
    t.index ["enterprise_id"], name: "index_enterprise_details_on_enterprise_id"
  end

  create_table "enterprises", force: :cascade do |t|
    t.bigint "sector_id"
    t.string "tax_code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "provinces", force: :cascade do |t|
    t.string "code"
    t.string "name"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "test_energies", force: :cascade do |t|
    t.integer "nam"
    t.string "ma_so_doanh_nghiep"
    t.string "ten_doanh_nghiep"
    t.integer "ma_cap"
    t.string "ten_nganh"
    t.float "dien"
    t.float "antracite_nltt"
    t.float "bitum_nltt"
    t.float "coc_nltt"
    t.float "ko_nltt"
    t.float "do_nltt"
    t.float "fo_nltt"
    t.float "lpg_nltt"
    t.float "ng_nltt"
    t.float "npk_pnl"
    t.float "hs_pnl"
    t.float "than_pnl"
    t.float "ng_pnl"
    t.float "dien_pnl"
    t.float "antracite_tj"
    t.float "bitum_tj"
    t.float "coc_tj"
    t.float "ko_tj"
    t.float "do_tj"
    t.float "fo_tj"
    t.float "lpg_tj"
    t.float "ng_tj"
    t.float "tong"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "test_enterprises", force: :cascade do |t|
    t.integer "nam"
    t.string "ma_so_doanh_nghiep"
    t.string "ten_doanh_nghiep"
    t.string "tinh"
    t.string "huyen"
    t.string "xa"
    t.float "toa_do_X"
    t.float "toa_do_Y"
    t.string "nganh_cap_1"
    t.integer "ma_Cap"
    t.string "ten_nganh_cap_2"
    t.integer "gtsx"
    t.integer "so_lao_dong"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "test_products", force: :cascade do |t|
    t.integer "nam"
    t.string "ma_so_doanh_nghiep"
    t.string "ten_doanh_nghiep"
    t.integer "stt"
    t.string "ma_san_pham"
    t.string "ten_san_pham"
    t.integer "ma_cap_2"
    t.string "ten_nganh_cap_2"
    t.string "don_vi"
    t.integer "so_luong"
    t.integer "gtsx"
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
    t.bigint "role_id"
    t.index ["enterprise_id"], name: "index_users_on_enterprise_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "wards", force: :cascade do |t|
    t.string "name"
    t.string "prefix"
    t.bigint "district_id"
    t.index ["district_id"], name: "index_wards_on_district_id"
  end

  add_foreign_key "climate_changes", "sectors"
  add_foreign_key "districts", "provinces"
  add_foreign_key "emission_factors", "sectors"
  add_foreign_key "energy_consumptions", "enterprises"
  add_foreign_key "enterprise_details", "enterprises"
  add_foreign_key "enterprises", "sectors"
  add_foreign_key "greenhouse_emission_details", "emission_reasons"
  add_foreign_key "greenhouse_emission_details", "greenhouse_emissions"
  add_foreign_key "greenhouse_emissions", "enterprises"
  add_foreign_key "greenhouse_emissions", "products"
  add_foreign_key "productivities", "products"
  add_foreign_key "products", "enterprises"
  add_foreign_key "sectors", "subsectors"
  add_foreign_key "users", "enterprises"
  add_foreign_key "users", "roles"
  add_foreign_key "wards", "districts"
end
