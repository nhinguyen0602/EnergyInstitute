module DemoService::EmissionProductIndex
  def self.call year, page, amount
    emission_products = TestEmissionProduct.in_year(year)
    length = emission_products.length()
    emission_products = emission_products.paginate(page: page, per_page: amount) if amount.present?
    return emission_products, length
  end
end