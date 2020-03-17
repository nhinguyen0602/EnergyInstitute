module ProductService::Update
  def self.call(product_id, product_params)
    product = Product.find(product_id)
    product.update!(product_params)
    product
  end  
end