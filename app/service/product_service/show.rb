module ProductService::Show
  def self.call(product_id)
    Product.find_by(id: product_id)
  end  
end