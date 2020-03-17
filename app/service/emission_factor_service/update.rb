module EmissionFactorService::Update
  def self.call emission_factor_id, emission_factor_params
    emission_factor = EmissionFactor.find(emission_factor_id)
    emission_factor.update!(emission_factor_params) if emission_factor
    emission_factor
  end  
end