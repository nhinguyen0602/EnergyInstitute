module ProductivityService::Index
  def self.call(product_id, year)
    if year == ''
      productivities = Productivity.belong_product(product_id)
    else
      productivities = Productivity.belong_product(product_id).at_year(year) 
    end
    return Product.find(product_id), productivities
  end  
end