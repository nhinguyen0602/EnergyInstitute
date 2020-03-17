module EnergyConsumptionService::Show
  def self.call(enterprise_id, year)
      energy_consumptions = EnergyConsumption.belong_enterprise(enterprise_id)
      energy_consumptions = energy_consumptions.at_year(year) if year.present?
      energy_consumptions
  end  
end