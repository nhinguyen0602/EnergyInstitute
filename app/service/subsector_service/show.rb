module SubsectorService::Show
    def self.call subsector_id
      Subsector.find(subsector_id)
    end  
  end