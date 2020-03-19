class CreateWards < ActiveRecord::Migration[6.0]
  def change
    create_table :wards do |t|
      t.string :name
      t.string :prefix
      t.references :district, foreign_key: true
    end
  end
end
