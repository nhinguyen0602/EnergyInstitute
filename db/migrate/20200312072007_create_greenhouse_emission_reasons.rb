class CreateGreenhouseEmissionReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :greenhouse_emission_reasons do |t|
      t.string :contain
      t.timestamps
    end
  end
end
