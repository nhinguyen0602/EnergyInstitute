module EmissionFactorService::Index
  def self.call sector_id
    Sector.find(sector_id).emission_factor
  end  
end