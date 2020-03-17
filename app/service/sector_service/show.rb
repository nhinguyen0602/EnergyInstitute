module SectorService::Show
  def self.call subsector_id, sector_id
    Subsector.find(subsector_id).sectors.find(sector_id)
  end
end