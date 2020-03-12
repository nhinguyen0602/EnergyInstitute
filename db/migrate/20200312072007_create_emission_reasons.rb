class CreateEmissionReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :emission_reasons do |t|
      t.string :contain
      t.timestamps
    end
  end
end
