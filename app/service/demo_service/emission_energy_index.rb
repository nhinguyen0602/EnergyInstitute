module DemoService::EmissionEnergyIndex
  def self.call year, page, amount
    emission_energies = TestEmissionEnergy.in_year(year)
    length = emission_energies.length()
    emission_energies = emission_energies.paginate(page: page, per_page: amount) if amount.present?
    return emission_energies, length
  end
end