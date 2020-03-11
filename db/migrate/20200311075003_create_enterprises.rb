class CreateEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprises do |t|
      t.references :sector, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.string :name
      t.float :production_value
      t.integer :number_of_employee
      t.timestamps
    end
  end
end
