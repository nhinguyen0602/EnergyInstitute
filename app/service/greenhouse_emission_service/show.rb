module GreenhouseEmissionService::Show
  def self.call greenhouse_emission_id
    GreenhouseEmission.find(greenhouse_emission_id)
  end
end