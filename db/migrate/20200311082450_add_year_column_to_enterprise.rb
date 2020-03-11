class AddYearColumnToEnterprise < ActiveRecord::Migration[6.0]
  def change
    add_column :enterprises, :year_of_investigation, :integer
  end
end
