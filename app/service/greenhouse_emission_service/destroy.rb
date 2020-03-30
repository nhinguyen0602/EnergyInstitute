module GreenhouseEmissionService::Destroy
  def self.call greenhouse_emission_id
    GreenhouseEmission.destroy(greenhouse_emission_id)
  end
end