class CreateEnterpriseDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprise_details do |t|
      t.string :provincial
      t.string :district
      t.string :commune
      t.float :lat
      t.float :lng
      t.float :production_value
      t.integer :number_of_employee
      t.integer :year_of_investigation
      t.timestamps
    end
  end
end
