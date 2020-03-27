module ProductService::Index
  
  def self.call enterprise
    enterprise.products
  end
    
end