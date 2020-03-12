class CreateGreenhouseEmissionDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :greenhouse_emission_details do |t|
      t.references :greenhouse_emission, foreign_key: true
      t.references :emission_reason, foreign_key: true
      t.integer :carbon_dioxide, default: 0
      t.integer :methane, default: 0
      t.integer :nitrous_dioxide, default: 0
      t.timestamps
    end
  end
end
