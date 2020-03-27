module ProductivityService::Show
  def self.call(product_id, year)
    Productivity.belong_product(product_id).at_year(year)
  end  
end