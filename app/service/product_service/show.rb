module ProductService::Show
  def self.call(product_id)
    Product.find(product_id)
  end  
end