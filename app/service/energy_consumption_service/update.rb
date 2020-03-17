module EnergyConsumptionService::Update
  def self.call(enterprise_id, energy_consumption_params)
    energy_consumption_at_year = EnergyConsumption.belong_enterprise(enterprise_id).at_year(energy_consumption_params[:year_of_investigation]).first
    if energy_consumption_at_year
      energy_consumption_at_year.update!(energy_consumption_params)
    else
      energy_consumption_at_year = Enterprise.find_by(id: enterprise_id).energy_consumptions.create!(energy_consumption_params)
    end
    energy_consumption_at_year
  end
end