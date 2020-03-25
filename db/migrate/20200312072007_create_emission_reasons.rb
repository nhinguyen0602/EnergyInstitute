class CreateEmissionReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :emission_reasons do |t|
      t.string :description
      t.timestamps
    end
  end
end
