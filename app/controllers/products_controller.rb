class ProductsController < ApplicationController
  def create
    product = ProductService::Create.call(@current_user.enterprise.id, product_params)
    data = {
      product: product
    }
    render_data data
  end

  def product_params
    params.require(%i[name])
    params.permit(:name)  
  end
end
