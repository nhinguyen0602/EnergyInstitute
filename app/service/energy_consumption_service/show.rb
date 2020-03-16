module EnergyConsumptionService::Show
  def self.call(enterprise_id, year)
    if year ==''
      EnergyConsumption.belong_enterprise(enterprise_id)
    else
      EnergyConsumption.belong_enterprise(enterprise_id).at_year(year)
    end
  end  
end