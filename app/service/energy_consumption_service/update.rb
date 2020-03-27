module EnergyConsumptionService::Update
  def self.call(enterprise, energy_consumption_params)
    energy_consumption_at_year = EnergyConsumption.find_or_initialize_by(
      enterprise_id: enterprise.id,
      year_of_investigation: energy_consumption_params[:year_of_investigation]
    )
    energy_consumption_at_year.assign_attributes(energy_consumption_params.except(:year_of_investigation))
    energy_consumption_at_year.save!
    energy_consumption_at_year
  end
end