module EnergyConsumptionService::Destroy
  def self.call energy_consumption_id
    EnergyConsumption.destroy(energy_consumption_id)
  end  
end