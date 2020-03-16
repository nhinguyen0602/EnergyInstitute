module ProductService::Destroy
  def self.call(product_id)
    Product.find(product_id).destroy
  end    
end