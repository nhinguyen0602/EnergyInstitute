module EnergyConsumptionService::Show
  def self.call(enterprise, year)
      energy_consumptions = EnergyConsumption.belong_enterprise(enterprise.id).order_by_year
      energy_consumptions = energy_consumptions.at_year(year) if year.present?
      energy_consumptions
  end  
end