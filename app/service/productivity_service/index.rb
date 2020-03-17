module ProductivityService::Index
  def self.call(product_id, year)
      productivities = Productivity.belong_product(product_id)
      productivities = productivities.at_year(year) if year.present?
    return Product.find(product_id), productivities
  end  
end