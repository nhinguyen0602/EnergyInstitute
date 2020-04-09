class CreateTestEmissionProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :test_emission_products do |t|
      t.integer :nam
      t.string :ma_so_doanh_nghiep
      t.string :ten_doanh_nghiep
      t.integer :ma_nganh_2
      t.string :te_cap_2
      t.string :ma_sp
      t.string :ten_sp
      t.string :don_vi
      t.integer :khoi_luong
      t.float :hspt_co2
      t.float :hspt_ch4
      t.float :phat_thai_co2
      t.float :phat_thai_ch4
      t.timestamps
    end
  end
end
