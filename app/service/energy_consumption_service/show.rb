module EnergyConsumptionService::Show
  def self.call(enterprise, year)
    EnergyConsumption.belong_enterprise(enterprise.id).at_year(year).order_by_year
  end  
end