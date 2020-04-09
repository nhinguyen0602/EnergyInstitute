module DemoService::EnergyIndex
  def self.call year, page, amount
    energies = TestEnergy.in_year(year)
    length = energies.length()
    energies = energies.paginate(page: page, per_page: amount) if amount.present?
    return energies, length
  end
end