module EnergyConsumptionService::Destroy
  def self.call year_of_investigation
    EnergyConsumption.find_by!(year_of_investigation: year_of_investigation).destroy
  end  
end