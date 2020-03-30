module ClimateChangeService::Show
  def self.call sector, year_of_investigation
    sector.climate_changes.find_by!(year_of_investigation: year_of_investigation)
  end
end