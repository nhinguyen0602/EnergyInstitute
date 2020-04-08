class CreateTestEmissionSums < ActiveRecord::Migration[6.0]
  def change
    create_table :test_emission_sums do |t|
      t.integer :nam
      t.string :ten_doanh_nghiep
      t.string :ma_so_doanh_nghiep
      t.integer :ma_cap_2
      t.string :ten_nganh_cap_2
      t.float :dien
      t.float :qtnl_co2
      t.float :qtnl_ch4
      t.float :qtnl_n2o
      t.float :pnl_co2
      t.float :pnl_ch4
      t.float :pnl_n2o
      t.float :phat_tan_co2
      t.float :phat_tan_ch4
      t.float :phat_tan_n2o
      t.float :qtcn_co2
      t.float :qtcn_ch4
      t.float :tong_tru_dien_co2
      t.float :tong_tru_dien_ch4
      t.float :tong_tru_dien_n2o
      t.float :tong_co2
      t.float :tong_ch4
      t.float :tong_n2o
      t.float :tong_quy_doi
      t.timestamps
    end
  end
end
