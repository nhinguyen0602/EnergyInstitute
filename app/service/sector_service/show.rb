module SectorService::Show
  def self.call sector_id
    Sector.find(sector_id)
  end
end