class CreateProductivities < ActiveRecord::Migration[6.0]
  def change
    create_table :productivities do |t|
      t.references :product, foreign_key: true
      t.integer :year_of_investigation
      t.integer :amount
      t.timestamps
    end
  end
end
