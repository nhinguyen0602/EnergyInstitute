class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :provincial
      t.string :district
      t.string :commune
      t.float :coordinate_X
      t.float :coordinate_Y
      t.timestamps
    end
  end
end
