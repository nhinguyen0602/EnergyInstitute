module ProductivityService::Update
  def self.call(product_id, productivity_params)
    productivity_at_year = Productivity.belong_product(product_id).at_year(productivity_params[:year_of_investigation]).first
    if productivity_at_year
      productivity_at_year.update!(productivity_params)
    else
      productivity_at_year = Product.find_by(id: product_id).productivities.create!(productivity_params)
    end
    return Product.find_by(id: product_id), productivity_at_year
  end  
end