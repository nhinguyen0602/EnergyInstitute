class CreateTestEmissionEnergies < ActiveRecord::Migration[6.0]
  def change
    create_table :test_emission_energies do |t|
      t.integer :nam
      t.string :ma_so_doanh_nghiep
      t.string :ten_doanh_nghiep
      t.integer :ma_cap_2
      t.string :ten_nganh_cap_2
      t.string :he_so_su_dung_nang_luong
      t.float :dien
      t.float :antracite_co2
      t.float :antracite_ch4
      t.float :antracite_n2o
      t.float :coke_co2
      t.float :coke_ch4
      t.float :coke_n2o
      t.float :bitum_co2
      t.float :bitum_ch4
      t.float :bitum_n2o
      t.float :do_co2
      t.float :do_ch4
      t.float :do_n2o
      t.float :fo_co2
      t.float :fo_ch4
      t.float :fo_n2o
      t.float :lpg_co2
      t.float :lpg_ch4
      t.float :lpg_n2o
      t.float :khi_tu_nhien_co2
      t.float :khi_tu_nhien_ch4
      t.float :khi_tu_nhien_n2o
      t.float :nang_luong_sinh_khoi_co2
      t.float :nang_luong_sinh_khoi_ch4
      t.float :nang_luong_sinh_khoi_n2o
      t.float :tong_co2
      t.float :tong_ch4
      t.float :tong_n2o
      t.float :tong
      t.timestamps
    end
  end
end
