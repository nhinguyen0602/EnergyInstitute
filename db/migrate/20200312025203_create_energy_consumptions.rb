class CreateEnergyConsumptions < ActiveRecord::Migration[6.0]
  def change
    create_table :energy_consumptions do |t|
      t.references :enterprise, foreign_key: true
      t.integer :year_of_investigation
      t.integer :self_produced_electricity
      t.integer :consumption_electricity 
      t.integer :coal
      t.integer :bitum_coal
      t.integer :coke_coal
      t.integer :dust_coal
      t.integer :ko
      t.integer :do
      t.integer :fo
      t.integer :lpg
      t.integer :ng
      t.integer :biomass_energy
      t.integer :renewable_energy
      t.timestamps
    end
  end
end
