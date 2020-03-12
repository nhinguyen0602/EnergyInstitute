class CreateEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprises do |t|
      t.references :sector, null: false, foreign_key: true
      t.references :enterprise_detail, null: false, foreign_key: true
      t.string :tax_code, unique: true
      t.string :name
      t.timestamps
    end
  end
end
