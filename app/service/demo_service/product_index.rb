module DemoService::ProductIndex
  def self.call year, page, amount
    products = TestProduct.in_year(year)
    length = products.length()
    products = products.paginate(page: page, per_page: amount) if amount.present?
    return products, length
  end
end