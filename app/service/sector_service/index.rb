module SectorService::Index
  def self.call subsector_id
    Subsector.find(subsector_id).sectors
  end
end