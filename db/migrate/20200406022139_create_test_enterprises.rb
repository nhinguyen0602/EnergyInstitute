class CreateTestEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :test_enterprises do |t|
      t.integer :nam
      t.string :ma_so_doanh_nghiep
      t.string :ten_doanh_nghiep
      t.string :tinh
      t.string :huyen
      t.string :xa
      t.float :toa_do_X
      t.float :toa_do_Y
      t.string :nganh_cap_1
      t.integer :ma_Cap
      t.string :ten_nganh_cap_2
      t.integer :gtsx
      t.integer :so_lao_dong
      t.timestamps
    end
  end
end
