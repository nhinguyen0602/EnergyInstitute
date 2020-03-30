module ClimateChangeService::Index
  def self.call sector
    sector.climate_changes
  end
end