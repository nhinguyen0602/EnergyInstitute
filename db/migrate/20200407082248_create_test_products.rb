class CreateTestProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :test_products do |t|
      t.integer :nam
      t.string :ma_so_doanh_nghiep
      t.string :ten_doanh_nghiep
      t.integer :stt
      t.string :ma_san_pham
      t.string :ten_san_pham
      t.integer :ma_cap_2
      t.string :ten_nganh_cap_2
      t.string :don_vi
      t.integer :so_luong
      t.integer :gtsx
      t.timestamps
    end
  end
end
