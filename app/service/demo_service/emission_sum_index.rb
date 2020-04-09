module DemoService::EmissionSumIndex
  def self.call year, page, amount
    emission_sum = TestEmissionSum.in_year(year)
    length = emission_sum.length()
    emission_sum = emission_sum.paginate(page: page, per_page: amount) if amount.present?
    return emission_sum, length
  end
end