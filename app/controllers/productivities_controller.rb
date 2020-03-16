class ProductivitiesController < ApplicationController
  def index
    product, productivities = ProductivityService::Show.call(params[:product_id], params[:year])
    data = {
      product: product,
      productivities: productivities
    }
    render_data data      
  end
end
