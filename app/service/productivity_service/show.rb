module ProductivityService::Show
  def self.call(product_id, year)
      productivities = Productivity.belong_product(product_id)
      productivities = productivities.at_year(year) if year.present?
  end  
end