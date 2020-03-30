class CreateClimateChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :climate_changes do |t|
      t.references :sector, foreign_key: true
      t.integer :year_of_investigation
      t.float :intensity
      t.float :energy_consumption
      t.float :emission_structure
      t.float :cnc_cnx_ratio
      t.float :cssx_mt_ratio
      t.float :cssx_sh_ratio
      t.float :gtsx_hotro_ratio
      t.float :ctx_ratio
      t.timestamps
    end
  end
end
