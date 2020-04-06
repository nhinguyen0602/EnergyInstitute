class CreateTestEnergies < ActiveRecord::Migration[6.0]
  def change
    create_table :test_energies do |t|
      t.integer :nam
      t.string :ma_so_doanh_nghiep
      t.string :ten_doanh_nghiep
      t.integer :ma_cap
      t.string :ten_nganh
      t.float :dien
      t.float :antracite_nltt
      t.float :bitum_nltt
      t.float :coc_nltt
      t.float :ko_nltt
      t.float :do_nltt
      t.float :fo_nltt
      t.float :lpg_nltt
      t.float :ng_nltt
      t.float :npk_pnl
      t.float :hs_pnl
      t.float :than_pnl
      t.float :ng_pnl
      t.float :dien_pnl
      t.float :antracite_tj
      t.float :bitum_tj
      t.float :coc_tj
      t.float :ko_tj
      t.float :do_tj
      t.float :fo_tj
      t.float :lpg_tj
      t.float :ng_tj
      t.float :tong
      t.timestamps
    end
  end
end
