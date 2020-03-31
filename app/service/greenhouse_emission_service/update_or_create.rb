module GreenhouseEmissionService::UpdateOrCreate
  def self.call enterprise, greenhouse_emission_params
    greenhouse_emission = enterprise.greenhouse_emissions.find_or_create_by!(
      year_of_investigation: greenhouse_emission_params[:year_of_investigation],
      product_id: greenhouse_emission_params[:product_id]
    )
    greenhouse_emission_detail = greenhouse_emission
                                .greenhouse_emission_details
                                .find_or_create_by!(
                                 emission_reason_id: greenhouse_emission_params[:emission_reason_id]
                                ) 
    greenhouse_emission_detail.update!(greenhouse_emission_params.except(:year_of_investigation, :product_id))
    greenhouse_emission
  end
end