module DemoService::EnergyIndex
  def self.call year, page, amount
    energies = TestEnergy.in_year(year)
    energies = energies.paginate(page: page, per_page: amount) if amount.present?
    energies
  end
end