module SubsectorService::Index
  def self.call
    Subsector.all
  end  
end