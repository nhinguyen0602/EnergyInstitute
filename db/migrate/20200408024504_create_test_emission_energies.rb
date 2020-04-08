class CreateTestEmissionEnergies < ActiveRecord::Migration[6.0]
  def change
    create_table :test_emission_energies do |t|
      t.integer :nam
      t.string :ten_doanh_nghiep
      t.string :ma_so_doanh_nghiep
      t.integer :ma_nganh_cap_2
      t.string :ten_nganh_cap_2
      t.float :dien
      t.float :co2_qtnl
      t.float :ch4_qtnl
      t.float :n20_qtnl
      t.float :co2_pnl
      t.float :ch4_pnl
      t.float :n20_pnl
      t.float :co2_pt
      t.float :ch4_pt
      t.float :n20_pt
      t.float :co2_qtcn
      t.float :ch4_qtcn
      t.float :co2_tong_tru_dien
      t.float :ch4_tong_tru_dien
      t.float :n20_tong_tru_dien
      t.float :co2_tong_ca_dien
      t.float :ch4_tong_ca_dien
      t.float :n20_tong_ca_dien
      t.float :co2_tong_quy_doi
      t.timestamps
    end
  end
end
