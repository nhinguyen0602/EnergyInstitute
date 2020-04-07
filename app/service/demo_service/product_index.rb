module DemoService::ProductIndex
  def self.call year, page, amount
    products = TestProduct.in_year(year)
    products = products.paginate(page: page, per_page: amount) if amount.present?
    products
  end
end