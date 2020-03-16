class CreateGreenhouseEmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :greenhouse_emissions do |t|
      t.integer :year_of_investigation
      t.references :enterprise, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
