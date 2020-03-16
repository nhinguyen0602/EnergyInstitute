module ProductService::Create
  def self.call(enterprise_id,product_params)
    Enterprise.find_by(id :enterprise_id).products.create(product_params)
  end  
end