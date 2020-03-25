module ProductService::Destroy
  def self.call(product_id)
    Product.destroy(product_id)
  end    
end