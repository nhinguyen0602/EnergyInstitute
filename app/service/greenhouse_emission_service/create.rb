module GreenhouseEmissionService::Create
  def self.call enterprise, greenhouse_emission_params
    greenhouse_emission = enterprise.greenhouse_emissions.create!(year_of_investigation: greenhouse_emission_params[:year_of_investigation])
    greenhouse_emission.greenhouse_emission_details.create!(greenhouse_emission_params.except(:year_of_investigation)) if EmissionReason.find(greenhouse_emission_params[:emission_reason_id])
    greenhouse_emission
  end
end