class CreateEmissionFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :emission_factors do |t|
      t.references :sector, foreign_key: true
      t.string :emission_source
      t.integer :unit
      t.integer :carbon_dioxide
      t.integer :methane
      t.integer :nitrous_dioxide
      t.timestamps
    end
  end
end
