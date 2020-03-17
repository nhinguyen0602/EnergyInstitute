module ProductService::Update
  def self.call(product_id, product_params)
    Product.find(product_id).update!(product_params)
    Product.find(product_id)
  end  
end