class CreateSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :sectors do |t|
      t.references :subsector, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
